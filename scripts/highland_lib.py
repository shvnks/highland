"""Shared helpers for Highland ports. Single source of truth: palette.json"""
import json, os, colorsys
HERE=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # repo root
PAL=json.load(open(os.path.join(HERE,'palette.json')))
FLAVORS=PAL['flavors']   # {'midnight':{name,dark,colors}, 'mist':{...}}
ACCENTS=list(PAL['accent_names'])
def rgb(h): h=h.lstrip('#'); return tuple(int(h[i:i+2],16) for i in (0,2,4))
def hexs(r,g,b): return '#%02X%02X%02X'%(round(r),round(g),round(b))
def mix(a,b,t):  # t=0 -> a, t=1 -> b
    A,B=rgb(a),rgb(b); return hexs(*[A[i]*(1-t)+B[i]*t for i in range(3)])
def shade(h,amt):  # amt>0 lighter, <0 darker (HLS lightness)
    r,g,b=[x/255 for x in rgb(h)]; H,Lh,S=colorsys.rgb_to_hls(r,g,b); Lh=max(0,min(1,Lh+amt))
    return hexs(*[x*255 for x in colorsys.hls_to_rgb(H,Lh,S)])
def ansi(flavor):
    """16 ANSI colors in order 0..15 for a flavor."""
    c=FLAVORS[flavor]['colors']; dark=FLAVORS[flavor]['dark']; d=0.06 if dark else -0.06
    if dark:
        base=[c['surface1'],c['rowan'],c['moss'],c['gorse'],c['saltire'],c['thistle'],c['loch'],c['subtext1']]
        bright=[c['overlay0'],shade(c['rowan'],d),shade(c['moss'],d),shade(c['gorse'],d),shade(c['saltire'],d),shade(c['thistle'],d),shade(c['loch'],d),c['text']]
    else:
        base=[c['subtext1'],c['rowan'],c['moss'],c['gorse'],c['saltire'],c['thistle'],c['loch'],c['surface2']]
        bright=[c['subtext0'],shade(c['rowan'],d),shade(c['moss'],d),shade(c['gorse'],d),shade(c['saltire'],d),shade(c['thistle'],d),shade(c['loch'],d),c['surface1']]
    return base+bright
def ui(flavor):
    """Common UI roles used by all ports."""
    c=FLAVORS[flavor]['colors']; dark=FLAVORS[flavor]['dark']
    return {
      'bg':c['base'],'bg_alt':c['mantle'],'bg_deep':c['crust'],'fg':c['text'],'fg_muted':c['subtext0'],
      'surface':c['surface0'],'surface_hi':c['surface1'],'border':c['surface2'],'comment':c['overlay2'],
      'cursor':c['gold'],'cursor_text':c['base'],
      'selection_bg': mix(c['base'],PAL['brand']['forest'],0.75 if dark else 0.30),
      'selection_fg': c['text'],
      'accent':c['gold'] if dark else c['moss'],'accent2':c['moss'] if dark else c['gold'],
      'brand_forest':PAL['brand']['forest'],'link':c['saltire'],
      'error':c['rowan'],'warning':c['bracken'],'info':c['saltire'],'hint':c['loch'],'success':c['moss'],
      'line_hl': mix(c['base'],c['surface0'],0.6),
    }
