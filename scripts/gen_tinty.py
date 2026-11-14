"""Generate Base16 + Base24 scheme files (Tinted Theming spec) for tinty."""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from highland_lib import FLAVORS, ansi, HERE, PAL
OUT = os.path.join(HERE, 'ports', 'tinty', 'schemes')
EXTRA = {  # base06/base07: lighter (dark flavor) or darker (light flavor) foregrounds
    'midnight': ('#EEF2EF', '#F7F9F8'),
    'mist':     ('#061620', '#020B10'),
}
def slots(f):
    c = FLAVORS[f]['colors']; A = ansi(f); b6, b7 = EXTRA[f]
    s16 = {
        'base00': c['base'],     'base01': c['surface0'], 'base02': c['surface1'], 'base03': c['overlay2'],
        'base04': c['subtext0'], 'base05': c['text'],     'base06': b6,            'base07': b7,
        'base08': c['rowan'],    'base09': c['bracken'],  'base0A': c['gorse'],    'base0B': c['moss'],
        'base0C': c['loch'],     'base0D': c['saltire'],  'base0E': c['thistle'],  'base0F': c['gold'],
    }
    s24 = dict(s16, base10=c['mantle'], base11=c['crust'],
               base12=A[9], base13=A[11], base14=A[10], base15=A[14], base16=A[12], base17=A[13])
    return s16, s24
def write(system, f, pal):
    fl = FLAVORS[f]; slug = 'highland-' + f
    lines = [f'system: "{system}"', f'name: "{fl["name"]}"', f'slug: "{slug}"',
             f'author: "{PAL["author"]}"', f'description: "{PAL["description"]}"',
             f'variant: "{"dark" if fl["dark"] else "light"}"', 'palette:']
    lines += [f'  {k}: "{v.lower()}"' for k, v in pal.items()]
    p = os.path.join(OUT, system, slug + '.yaml'); os.makedirs(os.path.dirname(p), exist_ok=True)
    open(p, 'w').write('\n'.join(lines) + '\n'); return p
for f in FLAVORS:
    s16, s24 = slots(f)
    print(write('base16', f, s16)); print(write('base24', f, s24))
