import sys,os,base64; sys.path.insert(0,os.path.dirname(os.path.abspath(__file__))); import highland_lib as h
from playwright.sync_api import sync_playwright
os.makedirs(os.path.join(h.HERE,'previews'),exist_ok=True)
logo=base64.b64encode(open(os.path.join(h.HERE,'assets','logo-128.png'),'rb').read()).decode()
def card(f):
    c=h.FLAVORS[f]['colors']; A=h.ansi(f); dark=h.FLAVORS[f]['dark']
    acc=''.join(f'<div class=sw><div class=chip style="background:{c[k]}"></div><b style="color:{c[k]}">{k}</b><span>{c[k]}</span></div>' for k in h.ACCENTS)
    neu=''.join(f'<div class=sw><div class=chip style="background:{c[k]};outline:1px solid {c["surface2"]}"></div><b>{k}</b><span>{c[k]}</span></div>' for k in ['text','subtext1','subtext0','overlay2','overlay1','overlay0','surface2','surface1','surface0','base','mantle','crust'])
    term=''.join(f'<span style="background:{A[i]};display:inline-block;width:42px;height:26px"></span>' for i in range(16))
    code=f'''<pre style="background:{c['mantle']};color:{c['text']}"><span style="color:{c['overlay2']};font-style:italic"># Highland {f.title()}</span>
<span style="color:{c['thistle']}">def</span> <span style="color:{c['saltire']}">patch_hosts</span>(<span style="color:{c['heather']};font-style:italic">hosts</span>: <span style="color:{c['gorse']}">list</span>) -&gt; <span style="color:{c['gorse']}">int</span>:
    count <span style="color:{c['loch']}">=</span> <span style="color:{c['bracken']}">0</span>
    <span style="color:{c['thistle']}">for</span> host <span style="color:{c['thistle']}">in</span> hosts:
        <span style="color:{c['saltire']}">print</span>(<span style="color:{c['moss']}">f"Patching {{host.</span><span style="color:{c['loch']}">name</span><span style="color:{c['moss']}">}}"</span>)
    <span style="color:{c['thistle']}">return</span> count</pre>'''
    return f'''<div class=card style="background:{c['base']};color:{c['text']}">
<div class=hd><img src="data:image/png;base64,{logo}"><div><h1>Highland {f.title()}</h1><p style="color:{c['subtext0']}">{'Dark' if dark else 'Light'} flavor · Shanks IT Solutions</p></div></div>
<h2 style="color:{c['subtext1']}">Accents</h2><div class=grid>{acc}</div>
<h2 style="color:{c['subtext1']}">Neutrals</h2><div class=grid>{neu}</div>
<h2 style="color:{c['subtext1']}">Terminal (ANSI 0–15)</h2><div>{term}</div>
{code}</div>'''
html=f'''<html><head><style>body{{margin:0;font-family:DejaVu Sans,sans-serif;background:#05111A;display:flex}}
.card{{width:780px;padding:36px 40px 40px;box-sizing:border-box}} .hd{{display:flex;gap:18px;align-items:center}} .hd img{{width:72px}}
h1{{margin:0;font-size:34px}} p{{margin:4px 0 0}} h2{{font-size:16px;letter-spacing:2px;text-transform:uppercase;margin:26px 0 12px}}
.grid{{display:grid;grid-template-columns:repeat(4,1fr);gap:12px 14px}} .sw{{display:flex;flex-direction:column;font-size:13px}} .chip{{height:46px;border-radius:10px;margin-bottom:6px}}
.sw span{{opacity:.75;font-family:DejaVu Sans Mono,monospace}} pre{{margin:26px 0 0;padding:18px 20px;border-radius:12px;font-size:15px;line-height:1.5;font-family:DejaVu Sans Mono,monospace}}</style></head>
<body>{card('midnight')}{card('mist')}</body></html>'''
with sync_playwright() as p:
    b=p.chromium.launch(); pg=b.new_page(viewport={'width':1560,'height':1100},device_scale_factor=2)
    pg.set_content(html); hgt=pg.evaluate('document.body.scrollHeight'); pg.set_viewport_size({'width':1560,'height':hgt})
    pg.screenshot(path=os.path.join(h.HERE,'previews','highland-palette.png')); b.close()
print('ok')
