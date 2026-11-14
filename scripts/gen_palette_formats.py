import sys, os, json
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__)))
from highland_lib import *
O=os.path.join(HERE,'palette'); os.makedirs(O,exist_ok=True)
css=['/* Highland palette - CSS custom properties */']; scss=['// Highland palette - SCSS']
tw={}
for f,fl in FLAVORS.items():
    sel=':root' if f=='midnight' else '[data-theme="mist"], .highland-mist'
    css.append(f'{sel} {{'); 
    for k,v in fl['colors'].items(): css.append(f'  --hl-{k}: {v};'); scss.append(f'$hl-{f}-{k}: {v};')
    css.append('}'); tw[f]={k:v for k,v in fl['colors'].items()}
    gpl=[ 'GIMP Palette',f'Name: {fl["name"]}','Columns: 8','#']+[ '%3d %3d %3d\t%s'%(*rgb(v),k) for k,v in fl['colors'].items()]
    open(f'{O}/highland-{f}.gpl','w').write('\n'.join(gpl)+'\n')
css.append(':root {'); [css.append(f'  --hl-brand-{k}: {v};') for k,v in PAL['brand'].items()]; css.append('}')
open(f'{O}/highland.css','w').write('\n'.join(css)+'\n')
open(f'{O}/_highland.scss','w').write('\n'.join(scss)+'\n')
open(f'{O}/tailwind.highland.js','w').write('// Add to tailwind.config.js -> theme.extend.colors\nmodule.exports = '+json.dumps({'highland':tw,'brand':PAL['brand']},indent=2)+';\n')
import shutil; shutil.copy(os.path.join(HERE,'palette.json'),f'{O}/palette.json')
print('ok')
