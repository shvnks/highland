#!/usr/bin/env python3
"""Generate Highland Vim/Neovim + CLI ports (btop, bat, fzf, starship) from palette.json."""
import os, sys, plistlib
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import highland_lib as h

OUT = os.path.join(h.HERE, 'ports')
def W(rel, text, mode='w'):
    p = os.path.join(OUT, rel); os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, mode) as f: f.write(text)
    return p

# ---------- xterm-256 nearest ----------
def _x256():
    lv = [0, 95, 135, 175, 215, 255]; cols = {}
    for i in range(216):
        cols[16 + i] = (lv[i // 36], lv[(i // 6) % 6], lv[i % 6])
    for i in range(24):
        v = 8 + i * 10; cols[232 + i] = (v, v, v)
    return cols
X256 = _x256()
def cterm(hx):
    r, g, b = h.rgb(hx)
    return min(X256, key=lambda k: (X256[k][0]-r)**2*0.3 + (X256[k][1]-g)**2*0.59 + (X256[k][2]-b)**2*0.11)

# ---------- token mapping (shared with VS Code / bat) ----------
def tokens(f):
    c = h.FLAVORS[f]['colors']
    return dict(comment=c['overlay2'], keyword=c['thistle'], storage=c['gold'], function=c['saltire'],
                string=c['moss'], number=c['bracken'], constant=c['bracken'], property=c['loch'],
                type=c['gorse'], operator=c['loch'], tag=c['rowan'], parameter=c['heather'],
                variable=c['text'], punctuation=c['subtext1'], escape=c['heather'], builtin=c['rowan'],
                regex=c['loch'], namespace=c['gorse'], decorator=c['bracken'], attribute=c['gold'])

# ---------- Vim ----------
def vim_scheme(f):
    c = h.FLAVORS[f]['colors']; u = h.ui(f); t = tokens(f); dark = h.FLAVORS[f]['dark']
    name = f'highland-{f}'
    L = [f'" {h.FLAVORS[f]["name"]} -- Highland color scheme by Shanks IT Solutions',
         '" Works in Vim 8.2+/9 and Neovim. Generated from palette.json, do not edit.',
         'hi clear', "if exists('syntax_on') | syntax reset | endif",
         f"set background={'dark' if dark else 'light'}", f"let g:colors_name = '{name}'", '']
    def hi(g, fg=None, bg=None, attr=None, sp=None):
        p = [f'hi {g}']
        p.append(f'guifg={fg}' if fg else 'guifg=NONE'); p.append(f'guibg={bg}' if bg else 'guibg=NONE')
        p.append(f'ctermfg={cterm(fg)}' if fg else 'ctermfg=NONE'); p.append(f'ctermbg={cterm(bg)}' if bg else 'ctermbg=NONE')
        a = attr or 'NONE'; p.append(f'gui={a}'); p.append(f'cterm={a.replace("undercurl","underline")}')
        if sp: p.append(f'guisp={sp}')
        L.append(' '.join(p))
    def ln(a, b): L.append(f'hi! link {a} {b}')
    # editor UI
    hi('Normal', c['text'], c['base']); hi('NormalNC', c['text'], c['base'])
    hi('NormalFloat', c['text'], c['mantle']); hi('FloatBorder', c['surface2'], c['mantle'])
    hi('Cursor', c['base'], c['gold']); ln('lCursor', 'Cursor'); ln('CursorIM', 'Cursor')
    hi('CursorLine', None, u['line_hl']); hi('CursorColumn', None, u['line_hl']); hi('ColorColumn', None, c['mantle'])
    hi('LineNr', c['overlay0']); hi('CursorLineNr', c['gold'], None, 'bold')
    hi('SignColumn', c['overlay0'], c['base']); hi('FoldColumn', c['overlay0'], c['base'])
    hi('Folded', c['subtext0'], c['surface0'])
    hi('Visual', None, u['selection_bg']); hi('VisualNOS', None, u['selection_bg'])
    hi('Search', c['base'], c['gold']); hi('IncSearch', c['base'], c['bracken'], 'bold'); ln('CurSearch', 'IncSearch')
    hi('Substitute', c['base'], c['rowan'])
    hi('MatchParen', c['gold'], c['surface1'], 'bold')
    hi('Pmenu', c['text'], c['surface0']); hi('PmenuSel', c['base'], c['gold'], 'bold')
    hi('PmenuSbar', None, c['surface1']); hi('PmenuThumb', None, c['overlay0'])
    hi('StatusLine', c['text'], c['surface0']); hi('StatusLineNC', c['overlay1'], c['mantle'])
    hi('TabLine', c['subtext0'], c['mantle']); hi('TabLineFill', None, c['crust']); hi('TabLineSel', c['text'], c['surface1'], 'bold')
    hi('VertSplit', c['surface2'], c['base']); hi('WinSeparator', c['surface2'], c['base'])
    hi('WildMenu', c['base'], c['gold'])
    hi('NonText', c['surface2']); hi('SpecialKey', c['surface2']); hi('Whitespace', c['surface2']); hi('EndOfBuffer', c['surface1'])
    hi('Conceal', c['overlay1'])
    hi('Directory', c['saltire']); hi('Title', c['gold'], None, 'bold')
    hi('ErrorMsg', c['rowan'], None, 'bold'); hi('WarningMsg', c['bracken']); hi('MoreMsg', c['moss']); hi('ModeMsg', c['subtext1'], None, 'bold'); hi('Question', c['loch'])
    hi('DiffAdd', None, h.mix(c['base'], c['moss'], 0.22)); hi('DiffChange', None, h.mix(c['base'], c['saltire'], 0.18))
    hi('DiffDelete', c['rowan'], h.mix(c['base'], c['rowan'], 0.20)); hi('DiffText', None, h.mix(c['base'], c['saltire'], 0.38), 'bold')
    hi('diffAdded', c['moss']); hi('diffRemoved', c['rowan']); hi('diffChanged', c['saltire'])
    hi('SpellBad', None, None, 'undercurl', c['rowan']); hi('SpellCap', None, None, 'undercurl', c['gorse'])
    hi('SpellRare', None, None, 'undercurl', c['thistle']); hi('SpellLocal', None, None, 'undercurl', c['loch'])
    hi('QuickFixLine', None, u['selection_bg'], 'bold')
    # syntax
    hi('Comment', t['comment'], None, 'italic')
    hi('Constant', t['constant']); hi('String', t['string']); hi('Character', t['string'])
    hi('Number', t['number']); hi('Float', t['number']); hi('Boolean', t['constant'], None, 'bold')
    hi('Identifier', t['variable']); hi('Function', t['function'])
    hi('Statement', t['keyword']); hi('Conditional', t['keyword']); hi('Repeat', t['keyword']); hi('Label', t['keyword'])
    hi('Operator', t['operator']); hi('Keyword', t['keyword']); hi('Exception', t['keyword'])
    hi('PreProc', t['storage']); hi('Include', t['keyword']); hi('Define', t['keyword']); hi('Macro', t['decorator']); hi('PreCondit', t['keyword'])
    hi('Type', t['type']); hi('StorageClass', t['storage']); hi('Structure', t['type']); hi('Typedef', t['type'])
    hi('Special', t['escape']); hi('SpecialChar', t['escape']); hi('Tag', t['tag']); hi('Delimiter', t['punctuation'])
    hi('SpecialComment', c['overlay2'], None, 'italic'); hi('Debug', c['rowan'])
    hi('Underlined', c['saltire'], None, 'underline'); hi('Ignore', c['overlay0'])
    hi('Error', c['rowan'], None, 'bold'); hi('Todo', c['base'], c['gold'], 'bold')
    # html/markdown basics
    hi('htmlTag', t['punctuation']); hi('htmlTagName', t['tag']); hi('htmlArg', t['attribute'])
    hi('markdownHeadingDelimiter', c['gold'], None, 'bold'); hi('markdownH1', c['gold'], None, 'bold'); hi('markdownH2', c['bracken'], None, 'bold')
    hi('markdownCode', c['moss']); hi('markdownUrl', c['saltire'], None, 'underline'); hi('markdownLinkText', c['loch'])
    L += ['', "if has('nvim')"]
    nv0 = len(L)
    # diagnostics
    for k, col in [('Error', c['rowan']), ('Warn', c['bracken']), ('Info', c['saltire']), ('Hint', c['loch']), ('Ok', c['moss'])]:
        hi(f'Diagnostic{k}', col); hi(f'DiagnosticVirtualText{k}', col, h.mix(c['base'], col, 0.12))
        hi(f'DiagnosticUnderline{k}', None, None, 'undercurl', col); hi(f'DiagnosticSign{k}', col, c['base']); ln(f'DiagnosticFloating{k}', f'Diagnostic{k}')
    hi('LspReferenceText', None, c['surface1']); hi('LspReferenceRead', None, c['surface1']); hi('LspReferenceWrite', None, c['surface1'], 'bold')
    hi('LspInlayHint', c['overlay1'], h.mix(c['base'], c['surface0'], 0.5), 'italic'); hi('LspSignatureActiveParameter', c['heather'], None, 'bold')
    ln('LspCodeLens', 'Comment')
    # treesitter
    TS = {
      '@comment': (t['comment'], 'italic'), '@comment.todo': None, '@keyword': (t['keyword'], None),
      '@keyword.function': (t['keyword'], None), '@keyword.return': (t['keyword'], None), '@keyword.operator': (t['keyword'], None),
      '@keyword.import': (t['keyword'], None), '@keyword.conditional': (t['keyword'], None), '@keyword.repeat': (t['keyword'], None),
      '@keyword.exception': (t['keyword'], None), '@keyword.modifier': (t['storage'], None), '@keyword.type': (t['storage'], None),
      '@function': (t['function'], None), '@function.call': (t['function'], None), '@function.builtin': (t['builtin'], None),
      '@function.method': (t['function'], None), '@function.method.call': (t['function'], None), '@method': (t['function'], None),
      '@function.macro': (t['decorator'], None), '@constructor': (t['type'], None),
      '@string': (t['string'], None), '@string.escape': (t['escape'], None), '@string.regexp': (t['regex'], None), '@string.special': (t['escape'], None),
      '@character': (t['string'], None), '@number': (t['number'], None), '@number.float': (t['number'], None), '@float': (t['number'], None),
      '@boolean': (t['constant'], 'bold'), '@constant': (t['constant'], None), '@constant.builtin': (t['constant'], None), '@constant.macro': (t['constant'], None),
      '@variable': (t['variable'], None), '@variable.builtin': (t['builtin'], 'italic'), '@variable.parameter': (t['parameter'], 'italic'),
      '@parameter': (t['parameter'], 'italic'), '@variable.member': (t['property'], None), '@property': (t['property'], None), '@field': (t['property'], None),
      '@type': (t['type'], None), '@type.builtin': (t['storage'], None), '@type.definition': (t['type'], None), '@module': (t['namespace'], None), '@namespace': (t['namespace'], None),
      '@attribute': (t['decorator'], None), '@label': (t['keyword'], None), '@operator': (t['operator'], None),
      '@punctuation': (t['punctuation'], None), '@punctuation.delimiter': (t['punctuation'], None), '@punctuation.bracket': (t['punctuation'], None), '@punctuation.special': (t['escape'], None),
      '@tag': (t['tag'], None), '@tag.attribute': (t['attribute'], None), '@tag.delimiter': (t['punctuation'], None), '@tag.builtin': (t['tag'], None),
      '@markup.heading': (c['gold'], 'bold'), '@markup.heading.1': (c['gold'], 'bold'), '@markup.heading.2': (c['bracken'], 'bold'), '@markup.heading.3': (c['gorse'], 'bold'),
      '@markup.strong': (c['text'], 'bold'), '@markup.italic': (c['text'], 'italic'), '@markup.strikethrough': (c['overlay1'], 'strikethrough'),
      '@markup.link': (c['loch'], None), '@markup.link.url': (c['saltire'], 'underline'), '@markup.link.label': (c['loch'], None),
      '@markup.raw': (c['moss'], None), '@markup.quote': (c['subtext0'], 'italic'), '@markup.list': (c['gold'], None),
      '@diff.plus': (c['moss'], None), '@diff.minus': (c['rowan'], None), '@diff.delta': (c['saltire'], None),
    }
    for g, v in TS.items():
        if v is None: ln(g, 'Todo')
        else: hi(g, v[0], None, v[1])
    for g, tgt in [('@lsp.type.function', '@function'), ('@lsp.type.method', '@function.method'), ('@lsp.type.parameter', '@variable.parameter'),
                   ('@lsp.type.property', '@property'), ('@lsp.type.type', '@type'), ('@lsp.type.class', '@type'), ('@lsp.type.interface', '@type'),
                   ('@lsp.type.enum', '@type'), ('@lsp.type.enumMember', '@constant'), ('@lsp.type.namespace', '@module'), ('@lsp.type.keyword', '@keyword'),
                   ('@lsp.type.decorator', '@attribute'), ('@lsp.type.macro', '@function.macro'), ('@lsp.type.variable', '@variable')]:
        ln(g, tgt)
    # plugins
    hi('GitSignsAdd', c['moss']); hi('GitSignsChange', c['saltire']); hi('GitSignsDelete', c['rowan'])
    ln('GitSignsAddNr', 'GitSignsAdd'); ln('GitSignsChangeNr', 'GitSignsChange'); ln('GitSignsDeleteNr', 'GitSignsDelete')
    hi('GitSignsCurrentLineBlame', c['overlay1'], None, 'italic')
    hi('TelescopeNormal', c['text'], c['mantle']); hi('TelescopeBorder', c['surface2'], c['mantle'])
    hi('TelescopePromptNormal', c['text'], c['surface0']); hi('TelescopePromptBorder', c['surface0'], c['surface0'])
    hi('TelescopePromptTitle', c['base'], c['gold'], 'bold'); hi('TelescopePreviewTitle', c['base'], c['moss'], 'bold'); hi('TelescopeResultsTitle', c['mantle'], c['mantle'])
    hi('TelescopeSelection', c['text'], c['surface1'], 'bold'); hi('TelescopeMatching', c['gold'], None, 'bold'); hi('TelescopePromptPrefix', c['gold'])
    hi('NvimTreeNormal', c['text'], c['mantle']); hi('NvimTreeFolderName', c['saltire']); hi('NvimTreeOpenedFolderName', c['saltire'], None, 'bold')
    hi('NvimTreeFolderIcon', c['gold']); hi('NvimTreeRootFolder', c['gold'], None, 'bold'); hi('NvimTreeGitDirty', c['bracken']); hi('NvimTreeGitNew', c['moss'])
    hi('NvimTreeGitDeleted', c['rowan']); hi('NvimTreeSpecialFile', c['heather'], None, 'underline'); hi('NvimTreeIndentMarker', c['surface2']); hi('NvimTreeWinSeparator', c['crust'], c['base'])
    hi('WhichKey', c['gold']); hi('WhichKeyGroup', c['saltire']); hi('WhichKeyDesc', c['text']); hi('WhichKeySeparator', c['overlay1']); hi('WhichKeyFloat', None, c['mantle'])
    hi('CmpItemAbbr', c['text']); hi('CmpItemAbbrDeprecated', c['overlay1'], None, 'strikethrough'); hi('CmpItemAbbrMatch', c['gold'], None, 'bold')
    hi('CmpItemAbbrMatchFuzzy', c['gold']); hi('CmpItemMenu', c['overlay1'], None, 'italic')
    for k, col in [('Function', c['saltire']), ('Method', c['saltire']), ('Variable', c['text']), ('Keyword', c['thistle']), ('Snippet', c['heather']),
                   ('Class', c['gorse']), ('Interface', c['gorse']), ('Module', c['gorse']), ('Property', c['loch']), ('Field', c['loch']),
                   ('Constant', c['bracken']), ('Text', c['subtext1']), ('File', c['saltire']), ('Folder', c['gold'])]:
        hi(f'CmpItemKind{k}', col)
    for i, col in enumerate(h.ansi(f)):
        L.append(f"let g:terminal_color_{i} = '{col}'")
    for i in range(nv0, len(L)): L[i] = '  ' + L[i]
    L.append('else')
    L.append('  let g:terminal_ansi_colors = [' + ', '.join(f"'{x}'" for x in h.ansi(f)) + ']')
    L.append('endif')
    return '\n'.join(L) + '\n'

# ---------- btop ----------
def btop(f):
    c = h.FLAVORS[f]['colors']; u = h.ui(f)
    k = dict(main_bg=c['base'], main_fg=c['text'], title=c['text'], hi_fg=c['gold'], selected_bg=u['selection_bg'], selected_fg=c['text'],
             inactive_fg=c['overlay0'], graph_text=c['subtext0'], meter_bg=c['surface1'], proc_misc=c['loch'],
             cpu_box=c['moss'], mem_box=c['gold'], net_box=c['saltire'], proc_box=c['thistle'], div_line=c['surface2'],
             temp_start=c['moss'], temp_mid=c['gorse'], temp_end=c['rowan'], cpu_start=c['moss'], cpu_mid=c['gorse'], cpu_end=c['rowan'],
             free_start=c['moss'], free_mid=c['loch'], free_end=c['loch'], cached_start=c['saltire'], cached_mid=c['saltire'], cached_end=c['bluebell'],
             available_start=c['gold'], available_mid=c['gorse'], available_end=c['gorse'], used_start=c['bracken'], used_mid=c['rowan'], used_end=c['rowan'],
             download_start=c['loch'], download_mid=c['saltire'], download_end=c['bluebell'], upload_start=c['gold'], upload_mid=c['bracken'], upload_end=c['heather'],
             process_start=c['moss'], process_mid=c['gold'], process_end=c['rowan'])
    s = [f'# {h.FLAVORS[f]["name"]} -- btop theme by Shanks IT Solutions (generated)']
    s += [f'theme[{a}]="{b}"' for a, b in k.items()]
    return '\n'.join(s) + '\n'

# ---------- bat / tmTheme ----------
def tmtheme(f):
    c = h.FLAVORS[f]['colors']; u = h.ui(f); t = tokens(f)
    def r(name, scope, fg=None, style=None, bg=None):
        s = {}
        if fg: s['foreground'] = fg
        if bg: s['background'] = bg
        if style: s['fontStyle'] = style
        return {'name': name, 'scope': scope, 'settings': s}
    settings = [{'settings': {'background': c['base'], 'foreground': c['text'], 'caret': c['gold'], 'lineHighlight': u['line_hl'],
                              'selection': u['selection_bg'], 'invisibles': c['surface2'], 'gutter': c['base'], 'gutterForeground': c['overlay0'],
                              'findHighlight': c['gold'], 'findHighlightForeground': c['base']}},
        r('Comment', 'comment, punctuation.definition.comment', t['comment'], 'italic'),
        r('String', 'string, string.quoted, punctuation.definition.string', t['string']),
        r('Escape', 'constant.character.escape, string.regexp', t['escape']),
        r('Number', 'constant.numeric', t['number']),
        r('Constant', 'constant, constant.language, support.constant, variable.other.constant', t['constant']),
        r('Keyword', 'keyword, keyword.control, keyword.other, storage.modifier.import', t['keyword']),
        r('Operator', 'keyword.operator, punctuation.separator.key-value', t['operator']),
        r('Storage', 'storage, storage.type, storage.modifier', t['storage']),
        r('Function', 'entity.name.function, support.function, meta.function-call entity.name.function, variable.function', t['function']),
        r('Builtin function', 'support.function.builtin, variable.language', t['builtin'], 'italic'),
        r('Class / type', 'entity.name.type, entity.name.class, support.type, support.class, entity.other.inherited-class', t['type']),
        r('Namespace', 'entity.name.namespace, entity.name.module', t['namespace']),
        r('Parameter', 'variable.parameter', t['parameter'], 'italic'),
        r('Property', 'variable.other.property, variable.other.object.property, meta.object-literal.key, support.type.property-name', t['property']),
        r('Variable', 'variable, variable.other', t['variable']),
        r('Tag', 'entity.name.tag', t['tag']),
        r('Attribute', 'entity.other.attribute-name', t['attribute']),
        r('Decorator', 'meta.decorator, entity.name.function.decorator, punctuation.decorator', t['decorator']),
        r('Punctuation', 'punctuation, meta.brace', t['punctuation']),
        r('Heading', 'markup.heading, entity.name.section', c['gold'], 'bold'),
        r('Bold', 'markup.bold', None, 'bold'), r('Italic', 'markup.italic', None, 'italic'),
        r('Link', 'markup.underline.link, string.other.link', c['saltire'], 'underline'),
        r('Inline code', 'markup.raw, markup.inline.raw', c['moss']),
        r('Quote', 'markup.quote', c['subtext0'], 'italic'),
        r('List', 'markup.list punctuation.definition.list', c['gold']),
        r('Inserted', 'markup.inserted, meta.diff.header.to-file', c['moss']),
        r('Deleted', 'markup.deleted, meta.diff.header.from-file', c['rowan']),
        r('Changed', 'markup.changed', c['saltire']),
        r('Diff range', 'meta.diff.range, meta.diff.header', c['thistle']),
        r('Invalid', 'invalid, invalid.illegal', c['rowan'], 'bold'),
    ]
    d = {'name': h.FLAVORS[f]['name'], 'author': h.PAL['author'], 'semanticClass': f'theme.{"dark" if h.FLAVORS[f]["dark"] else "light"}.highland_{f}',
         'uuid': {'midnight': '6f3c8f0e-3a8e-4d2b-9a51-0b1f2a2d5e47', 'mist': '8a1d2c4b-5e6f-4a7b-8c9d-e6ece82d5e47'}[f], 'settings': settings}
    return plistlib.dumps(d, fmt=plistlib.FMT_XML)

# ---------- fzf ----------
def fzf(f):
    c = h.FLAVORS[f]['colors']; u = h.ui(f)
    cols = {'bg': c['base'], 'bg+': c['surface0'], 'fg': c['text'], 'fg+': c['text'], 'hl': c['gold'], 'hl+': c['gold'],
            'info': c['loch'], 'marker': c['moss'], 'prompt': c['gold'], 'spinner': c['heather'], 'pointer': c['rowan'],
            'header': c['saltire'], 'border': c['surface2'], 'label': c['subtext1'], 'query': c['text'], 'selected-bg': u['selection_bg']}
    spec = ','.join(f'{k}:{v}' for k, v in cols.items())
    return (f'# {h.FLAVORS[f]["name"]} -- fzf colors (generated). Source this file in ~/.bashrc or ~/.zshrc\n'
            f'export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --color={spec}"\n')

# ---------- starship ----------
def starship():
    s = ['# Highland palettes for Starship (generated from palette.json)',
         '# Copy these tables into ~/.config/starship.toml, then set at the top of that file:',
         '#   palette = "highland_midnight"   # or "highland_mist"',
         '# Use the color names in styles, for example:  style = "bold gold"', '']
    for f, d in h.FLAVORS.items():
        s.append(f'[palettes.highland_{f}]')
        for k, v in d['colors'].items(): s.append(f'{k} = "{v}"')
        s.append(f'forest = "{h.PAL["brand"]["forest"]}"'); s.append('')
    return '\n'.join(s)

if __name__ == '__main__':
    files = []
    for f in h.FLAVORS:
        files.append(W(f'vim/colors/highland-{f}.vim', vim_scheme(f)))
        files.append(W(f'btop/highland-{f}.theme', btop(f)))
        files.append(W(f'bat/Highland-{f.title()}.tmTheme', tmtheme(f), 'wb'))
        files.append(W(f'fzf/highland-{f}.sh', fzf(f)))
    files.append(W('vim/colors/highland.vim',
        '" Highland -- picks Midnight (dark) or Mist (light) from &background\n'
        "if &background ==# 'light'\n  runtime colors/highland-mist.vim\nelse\n  runtime colors/highland-midnight.vim\nendif\n"
        "let g:colors_name = 'highland'\n"))
    files.append(W('starship/highland.toml', starship()))
    for p in files: print(os.path.relpath(p, h.HERE))
