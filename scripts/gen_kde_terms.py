import sys, os, json
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__)))
from highland_lib import *
OUT=os.path.join(HERE,'ports')
def w(path,text):
    p=os.path.join(OUT,path); os.makedirs(os.path.dirname(p),exist_ok=True); open(p,'w').write(text)
def kc(h): return '%d,%d,%d'%rgb(h)
for f,fl in FLAVORS.items():
    c=fl['colors']; u=ui(f); dark=fl['dark']; T=fl['name']; slug='highland-'+f; Camel='Highland'+f.title()
    A=ansi(f)
    focus=c['gold'] if dark else c['moss']
    def sec(name,bg,alt,fg,inactive=None):
        return f"""[{name}]
BackgroundAlternate={kc(alt)}
BackgroundNormal={kc(bg)}
DecorationFocus={kc(focus)}
DecorationHover={kc(focus)}
ForegroundActive={kc(c['bracken'])}
ForegroundInactive={kc(inactive or c['subtext0'])}
ForegroundLink={kc(c['saltire'])}
ForegroundNegative={kc(c['rowan'])}
ForegroundNeutral={kc(c['gorse'] if dark else c['bracken'])}
ForegroundNormal={kc(fg)}
ForegroundPositive={kc(c['moss'])}
ForegroundVisited={kc(c['thistle'])}
"""
    sel_bg=PAL['brand']['forest']
    kde=f"""[ColorEffects:Disabled]
Color={kc(c['surface0'])}
ColorAmount=0
ColorEffect=0
ContrastAmount=0.65
ContrastEffect=1
IntensityAmount=0.1
IntensityEffect=2

[ColorEffects:Inactive]
ChangeSelectionColor=true
Color={kc(c['surface1'])}
ColorAmount=0.025
ColorEffect=2
ContrastAmount=0.1
ContrastEffect=2
Enable=false
IntensityAmount=0
IntensityEffect=0

{sec('Colors:Button',c['surface0'],c['surface1'],c['text'])}
{sec('Colors:Complementary',c['crust'],c['mantle'],c['text'])}
{sec('Colors:Header',c['mantle'],c['base'],c['text'])}
{sec('Colors:Header][Inactive',c['crust'],c['mantle'],c['subtext1'])}
[Colors:Selection]
BackgroundAlternate={kc(shade(sel_bg,-0.05))}
BackgroundNormal={kc(sel_bg)}
DecorationFocus={kc(focus)}
DecorationHover={kc(focus)}
ForegroundActive={kc('#FFFFFF')}
ForegroundInactive={kc('#D9E4DE')}
ForegroundLink={kc('#CFE3FF')}
ForegroundNegative={kc('#FFD2CE')}
ForegroundNeutral={kc('#F6E7B8')}
ForegroundNormal={kc('#FFFFFF')}
ForegroundPositive={kc('#D4F0DC')}
ForegroundVisited={kc('#EBD9FA')}

{sec('Colors:Tooltip',c['mantle'],c['base'],c['text'])}
{sec('Colors:View',c['base'],c['mantle'] if dark else c['mantle'],c['text'])}
{sec('Colors:Window',c['mantle'],c['base'],c['text'])}
[General]
ColorScheme={Camel}
Name={T}
shadeSortColumn=true

[KDE]
contrast=4

[WM]
activeBackground={kc(c['crust'] if dark else c['crust'])}
activeBlend={kc(c['text'])}
activeForeground={kc(c['text'])}
inactiveBackground={kc(c['mantle'])}
inactiveBlend={kc(c['subtext0'])}
inactiveForeground={kc(c['subtext0'])}
"""
    w(f'kde/{Camel}.colors',kde)
    # Konsole
    def kcol(name,h): return f"[{name}]\nColor={kc(h)}\n\n"
    ks=kcol('Background',c['base'])+kcol('BackgroundFaint',c['base'])+kcol('BackgroundIntense',c['mantle'])
    for i in range(8):
        ks+=kcol(f'Color{i}',A[i])+kcol(f'Color{i}Faint',mix(A[i],c['base'],0.35))+kcol(f'Color{i}Intense',A[i+8])
    ks+=kcol('Foreground',c['text'])+kcol('ForegroundFaint',c['subtext0'])+kcol('ForegroundIntense',c['text'] if not dark else '#FFFFFF')
    ks+=f"[General]\nAnchor=0.5,0.5\nBlur=false\nColorRandomization=false\nDescription={T}\nFillStyle=Tile\nOpacity=1\nWallpaper=\nWallpaperFlipType=NoFlip\nWallpaperOpacity=1\n"
    w(f'konsole/{T.replace(" ","")}.colorscheme',ks)
    # Kitty
    kit=f"""# {T} - Kitty theme (Highland palette by Shanks IT Solutions)
foreground              {c['text']}
background              {c['base']}
selection_foreground    {u['selection_fg']}
selection_background    {u['selection_bg']}
cursor                  {c['gold'] if dark else c['moss']}
cursor_text_color       {c['base']}
url_color               {c['saltire']}
active_border_color     {focus}
inactive_border_color   {c['surface2']}
bell_border_color       {c['gorse']}
active_tab_foreground   {c['crust'] if dark else '#FFFFFF'}
active_tab_background   {focus}
inactive_tab_foreground {c['subtext0']}
inactive_tab_background {c['mantle']}
tab_bar_background      {c['crust']}
mark1_foreground {c['base']}
mark1_background {c['gold']}
mark2_foreground {c['base']}
mark2_background {c['moss']}
mark3_foreground {c['base']}
mark3_background {c['thistle']}
"""+''.join(f"color{i:<2}                 {A[i]}\n" for i in range(16))
    w(f'kitty/{slug}.conf',kit)
    # Alacritty
    names=['black','red','green','yellow','blue','magenta','cyan','white']
    al=f"# {T} - Alacritty theme\n[colors.primary]\nbackground = \"{c['base']}\"\nforeground = \"{c['text']}\"\ndim_foreground = \"{c['subtext0']}\"\nbright_foreground = \"{c['text']}\"\n\n[colors.cursor]\ntext = \"{c['base']}\"\ncursor = \"{focus}\"\n\n[colors.vi_mode_cursor]\ntext = \"{c['base']}\"\ncursor = \"{c['loch']}\"\n\n[colors.selection]\ntext = \"{u['selection_fg']}\"\nbackground = \"{u['selection_bg']}\"\n\n[colors.search.matches]\nforeground = \"{c['base']}\"\nbackground = \"{c['gorse'] if dark else c['gold']}\"\n\n[colors.search.focused_match]\nforeground = \"{c['base']}\"\nbackground = \"{c['bracken']}\"\n\n[colors.hints.start]\nforeground = \"{c['base']}\"\nbackground = \"{c['gold']}\"\n\n[colors.hints.end]\nforeground = \"{c['base']}\"\nbackground = \"{c['subtext0']}\"\n\n[colors.footer_bar]\nforeground = \"{c['base']}\"\nbackground = \"{c['subtext0']}\"\n\n"
    al+="[colors.normal]\n"+''.join(f'{n} = "{A[i]}"\n' for i,n in enumerate(names))+"\n[colors.bright]\n"+''.join(f'{n} = "{A[i+8]}"\n' for i,n in enumerate(names))
    al+="\n[colors.dim]\n"+''.join(f'{n} = "{mix(A[i],c["base"],0.35)}"\n' for i,n in enumerate(names))
    w(f'alacritty/{slug}.toml',al)
    # WezTerm
    q=lambda L: '['+', '.join(f'"{x}"' for x in L)+']'
    wz=f"""# {T} - WezTerm color scheme. Put in ~/.config/wezterm/colors/
[colors]
foreground = "{c['text']}"
background = "{c['base']}"
cursor_bg = "{focus}"
cursor_fg = "{c['base']}"
cursor_border = "{focus}"
selection_fg = "{u['selection_fg']}"
selection_bg = "{u['selection_bg']}"
scrollbar_thumb = "{c['surface2']}"
split = "{c['surface2']}"
compose_cursor = "{c['bracken']}"
ansi = {q(A[:8])}
brights = {q(A[8:])}

[colors.tab_bar]
background = "{c['crust']}"

[colors.tab_bar.active_tab]
bg_color = "{focus}"
fg_color = "{c['crust'] if dark else '#FFFFFF'}"

[colors.tab_bar.inactive_tab]
bg_color = "{c['mantle']}"
fg_color = "{c['subtext0']}"

[colors.tab_bar.inactive_tab_hover]
bg_color = "{c['surface0']}"
fg_color = "{c['text']}"

[colors.tab_bar.new_tab]
bg_color = "{c['crust']}"
fg_color = "{c['subtext0']}"

[metadata]
name = "{T}"
author = "Shanks IT Solutions"
origin_url = ""
"""
    w(f'wezterm/{T}.toml',wz)
    # Windows Terminal
    keys=['black','red','green','yellow','blue','purple','cyan','white']
    wt={'name':T,'background':c['base'],'foreground':c['text'],'cursorColor':focus,'selectionBackground':u['selection_bg']}
    for i,k in enumerate(keys): wt[k]=A[i]; wt['bright'+k.title()]=A[i+8]
    w(f'windows-terminal/{slug}.json',json.dumps(wt,indent=2)+'\n')
print('ok')
