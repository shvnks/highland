"""Validate every generated Highland file. Exit 1 on any problem."""
import os, sys, re, json, glob, plistlib, tomllib, configparser
ROOT=os.path.dirname(os.path.dirname(os.path.abspath(__file__))); os.chdir(ROOT)
sys.path.insert(0,'scripts'); import highland_lib as h
err=[]
def bad(m): err.append(m); print('FAIL',m)
HEX=re.compile(r'^#[0-9A-Fa-f]{6}([0-9A-Fa-f]{2})?$')
# palette sanity + contrast
def L(x):
    c=[v/255 for v in h.rgb(x)]; c=[v/12.92 if v<=0.03928 else ((v+0.055)/1.055)**2.4 for v in c]; return 0.2126*c[0]+0.7152*c[1]+0.0722*c[2]
cr=lambda a,b:(max(L(a),L(b))+0.05)/(min(L(a),L(b))+0.05)
keys=None
for f,fl in h.FLAVORS.items():
    k=set(fl['colors']); keys=keys or k
    if k!=keys: bad(f'{f}: color keys differ between flavors')
    for n,v in fl['colors'].items():
        if not HEX.match(v): bad(f'{f}.{n} invalid hex {v}')
    for n in h.ACCENTS+['text','subtext1','subtext0']:
        r=cr(fl['colors'][n],fl['colors']['base'])
        if r<4.5: bad(f'{f}.{n} contrast {r:.2f} < 4.5')
for p in glob.glob('ports/**/*.toml',recursive=True): 
    try: tomllib.load(open(p,'rb'))
    except Exception as e: bad(f'{p}: {e}')
for p in glob.glob('ports/**/*.json',recursive=True)+['palette.json']:
    try: json.load(open(p))
    except Exception as e: bad(f'{p}: {e}')
for p in glob.glob('ports/vscode/themes/*.json'):
    t=json.load(open(p))
    for k,v in t['colors'].items():
        if not HEX.match(v): bad(f'{p}: {k}={v}')
for p in glob.glob('ports/bat/*.tmTheme'):
    try: plistlib.load(open(p,'rb'))
    except Exception as e: bad(f'{p}: {e}')
for p in glob.glob('ports/kde/*.colors')+glob.glob('ports/konsole/*.colorscheme'):
    try: cp=configparser.ConfigParser(strict=True); cp.optionxform=str; cp.read(p)
    except Exception as e: bad(f'{p}: {e}')
for p in glob.glob('ports/tinty/schemes/*/*.yaml'):
    t=open(p).read(); sysname=p.split('/')[-2]
    need=[f'base0{x}' for x in '0123456789ABCDEF']+([f'base1{x}' for x in '01234567'] if sysname=='base24' else [])
    for k in need:
        m=re.search(rf'^\s+{k}: "(#[0-9a-f]{{6}})"',t,re.M)
        if not m: bad(f'{p}: missing {k}')
    if f'system: "{sysname}"' not in t: bad(f'{p}: wrong system')
for p in glob.glob('ports/tinty/**/*.sh',recursive=True):
    if os.system(f'bash -n "{p}"'): bad(f'{p}: bash syntax')
try: tomllib.load(open('ports/tinty/config.toml','rb'))
except Exception as e: bad(f'tinty config: {e}')
print('OK' if not err else f'{len(err)} problem(s)'); sys.exit(1 if err else 0)
