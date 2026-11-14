" Highland Mist -- Highland color scheme by Shanks IT Solutions
" Works in Vim 8.2+/9 and Neovim. Generated from palette.json, do not edit.
hi clear
if exists('syntax_on') | syntax reset | endif
set background=light
let g:colors_name = 'highland-mist'

hi Normal guifg=#0B1F2A guibg=#E6ECE8 ctermfg=234 ctermbg=255 gui=NONE cterm=NONE
hi NormalNC guifg=#0B1F2A guibg=#E6ECE8 ctermfg=234 ctermbg=255 gui=NONE cterm=NONE
hi NormalFloat guifg=#0B1F2A guibg=#DBE3DE ctermfg=234 ctermbg=254 gui=NONE cterm=NONE
hi FloatBorder guifg=#B4C2BB guibg=#DBE3DE ctermfg=250 ctermbg=254 gui=NONE cterm=NONE
hi Cursor guifg=#E6ECE8 guibg=#75592A ctermfg=255 ctermbg=94 gui=NONE cterm=NONE
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi CursorLine guifg=NONE guibg=#DBE2DE ctermfg=NONE ctermbg=254 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#DBE2DE ctermfg=NONE ctermbg=254 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#DBE3DE ctermfg=NONE ctermbg=254 gui=NONE cterm=NONE
hi LineNr guifg=#8C9C96 guibg=NONE ctermfg=246 ctermbg=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
hi SignColumn guifg=#8C9C96 guibg=#E6ECE8 ctermfg=246 ctermbg=255 gui=NONE cterm=NONE
hi FoldColumn guifg=#8C9C96 guibg=#E6ECE8 ctermfg=246 ctermbg=255 gui=NONE cterm=NONE
hi Folded guifg=#43565D guibg=#D3DCD7 ctermfg=239 ctermbg=253 gui=NONE cterm=NONE
hi Visual guifg=NONE guibg=#AEC1B8 ctermfg=NONE ctermbg=250 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#AEC1B8 ctermfg=NONE ctermbg=250 gui=NONE cterm=NONE
hi Search guifg=#E6ECE8 guibg=#75592A ctermfg=255 ctermbg=94 gui=NONE cterm=NONE
hi IncSearch guifg=#E6ECE8 guibg=#9C4A0E ctermfg=255 ctermbg=130 gui=bold cterm=bold
hi! link CurSearch IncSearch
hi Substitute guifg=#E6ECE8 guibg=#AE2F2A ctermfg=255 ctermbg=124 gui=NONE cterm=NONE
hi MatchParen guifg=#75592A guibg=#C4D0C9 ctermfg=94 ctermbg=252 gui=bold cterm=bold
hi Pmenu guifg=#0B1F2A guibg=#D3DCD7 ctermfg=234 ctermbg=253 gui=NONE cterm=NONE
hi PmenuSel guifg=#E6ECE8 guibg=#75592A ctermfg=255 ctermbg=94 gui=bold cterm=bold
hi PmenuSbar guifg=NONE guibg=#C4D0C9 ctermfg=NONE ctermbg=252 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#8C9C96 ctermfg=NONE ctermbg=246 gui=NONE cterm=NONE
hi StatusLine guifg=#0B1F2A guibg=#D3DCD7 ctermfg=234 ctermbg=253 gui=NONE cterm=NONE
hi StatusLineNC guifg=#738581 guibg=#DBE3DE ctermfg=244 ctermbg=254 gui=NONE cterm=NONE
hi TabLine guifg=#43565D guibg=#DBE3DE ctermfg=239 ctermbg=254 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=#CFD9D3 ctermfg=NONE ctermbg=188 gui=NONE cterm=NONE
hi TabLineSel guifg=#0B1F2A guibg=#C4D0C9 ctermfg=234 ctermbg=252 gui=bold cterm=bold
hi VertSplit guifg=#B4C2BB guibg=#E6ECE8 ctermfg=250 ctermbg=255 gui=NONE cterm=NONE
hi WinSeparator guifg=#B4C2BB guibg=#E6ECE8 ctermfg=250 ctermbg=255 gui=NONE cterm=NONE
hi WildMenu guifg=#E6ECE8 guibg=#75592A ctermfg=255 ctermbg=94 gui=NONE cterm=NONE
hi NonText guifg=#B4C2BB guibg=NONE ctermfg=250 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#B4C2BB guibg=NONE ctermfg=250 ctermbg=NONE gui=NONE cterm=NONE
hi Whitespace guifg=#B4C2BB guibg=NONE ctermfg=250 ctermbg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#C4D0C9 guibg=NONE ctermfg=252 ctermbg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#738581 guibg=NONE ctermfg=244 ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
hi ErrorMsg guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=bold cterm=bold
hi WarningMsg guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=bold cterm=bold
hi Question guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#BDCFC3 ctermfg=NONE ctermbg=251 gui=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#C2D2DC ctermfg=NONE ctermbg=252 gui=NONE cterm=NONE
hi DiffDelete guifg=#AE2F2A guibg=#DBC6C2 ctermfg=124 ctermbg=252 gui=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#9AB5CF ctermfg=NONE ctermbg=110 gui=bold cterm=bold
hi diffAdded guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
hi diffChanged guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#AE2F2A
hi SpellCap guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#6E5C00
hi SpellRare guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#6A3893
hi SpellLocal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#0B6862
hi QuickFixLine guifg=NONE guibg=#AEC1B8 ctermfg=NONE ctermbg=250 gui=bold cterm=bold
hi Comment guifg=#5A6C70 guibg=NONE ctermfg=242 ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=bold cterm=bold
hi Identifier guifg=#0B1F2A guibg=NONE ctermfg=234 ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=NONE cterm=NONE
hi Tag guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#5A6C70 guibg=NONE ctermfg=242 ctermbg=NONE gui=italic cterm=italic
hi Debug guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=underline cterm=underline
hi Ignore guifg=#8C9C96 guibg=NONE ctermfg=246 ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=bold cterm=bold
hi Todo guifg=#E6ECE8 guibg=#75592A ctermfg=255 ctermbg=94 gui=bold cterm=bold
hi htmlTag guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingDelimiter guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
hi markdownH1 guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
hi markdownH2 guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=bold cterm=bold
hi markdownCode guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=underline cterm=underline
hi markdownLinkText guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE

if has('nvim')
  hi DiagnosticError guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#AE2F2A guibg=#DFD5D1 ctermfg=124 ctermbg=188 gui=NONE cterm=NONE
  hi DiagnosticUnderlineError guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#AE2F2A
  hi DiagnosticSignError guifg=#AE2F2A guibg=#E6ECE8 ctermfg=124 ctermbg=255 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingError DiagnosticError
  hi DiagnosticWarn guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarn guifg=#9C4A0E guibg=#DDD9CE ctermfg=130 ctermbg=253 gui=NONE cterm=NONE
  hi DiagnosticUnderlineWarn guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#9C4A0E
  hi DiagnosticSignWarn guifg=#9C4A0E guibg=#E6ECE8 ctermfg=130 ctermbg=255 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingWarn DiagnosticWarn
  hi DiagnosticInfo guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#1D5BA6 guibg=#CEDBE0 ctermfg=25 ctermbg=188 gui=NONE cterm=NONE
  hi DiagnosticUnderlineInfo guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#1D5BA6
  hi DiagnosticSignInfo guifg=#1D5BA6 guibg=#E6ECE8 ctermfg=25 ctermbg=255 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingInfo DiagnosticInfo
  hi DiagnosticHint guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#0B6862 guibg=#CCDCD8 ctermfg=23 ctermbg=188 gui=NONE cterm=NONE
  hi DiagnosticUnderlineHint guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#0B6862
  hi DiagnosticSignHint guifg=#0B6862 guibg=#E6ECE8 ctermfg=23 ctermbg=255 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingHint DiagnosticHint
  hi DiagnosticOk guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextOk guifg=#2A6640 guibg=#CFDCD4 ctermfg=23 ctermbg=188 gui=NONE cterm=NONE
  hi DiagnosticUnderlineOk guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#2A6640
  hi DiagnosticSignOk guifg=#2A6640 guibg=#E6ECE8 ctermfg=23 ctermbg=255 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingOk DiagnosticOk
  hi LspReferenceText guifg=NONE guibg=#C4D0C9 ctermfg=NONE ctermbg=252 gui=NONE cterm=NONE
  hi LspReferenceRead guifg=NONE guibg=#C4D0C9 ctermfg=NONE ctermbg=252 gui=NONE cterm=NONE
  hi LspReferenceWrite guifg=NONE guibg=#C4D0C9 ctermfg=NONE ctermbg=252 gui=bold cterm=bold
  hi LspInlayHint guifg=#738581 guibg=#DCE4E0 ctermfg=244 ctermbg=254 gui=italic cterm=italic
  hi LspSignatureActiveParameter guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=bold cterm=bold
  hi! link LspCodeLens Comment
  hi @comment guifg=#5A6C70 guibg=NONE ctermfg=242 ctermbg=NONE gui=italic cterm=italic
  hi! link @comment.todo Todo
  hi @keyword guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.function guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.return guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.operator guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.import guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.conditional guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.repeat guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.exception guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.modifier guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.type guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi @function guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.call guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.builtin guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.method guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.method.call guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi @method guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.macro guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @constructor guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi @string guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @string.escape guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=NONE cterm=NONE
  hi @string.regexp guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @string.special guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=NONE cterm=NONE
  hi @character guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @number guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @number.float guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @float guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @boolean guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=bold cterm=bold
  hi @constant guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @constant.builtin guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @constant.macro guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @variable guifg=#0B1F2A guibg=NONE ctermfg=234 ctermbg=NONE gui=NONE cterm=NONE
  hi @variable.builtin guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=italic cterm=italic
  hi @variable.parameter guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=italic cterm=italic
  hi @parameter guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=italic cterm=italic
  hi @variable.member guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @property guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @field guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @type guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi @type.builtin guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi @type.definition guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi @module guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi @namespace guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi @attribute guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi @label guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi @operator guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation.delimiter guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation.bracket guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation.special guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag.attribute guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag.delimiter guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag.builtin guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.heading guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
  hi @markup.heading.1 guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
  hi @markup.heading.2 guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=bold cterm=bold
  hi @markup.heading.3 guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=bold cterm=bold
  hi @markup.strong guifg=#0B1F2A guibg=NONE ctermfg=234 ctermbg=NONE gui=bold cterm=bold
  hi @markup.italic guifg=#0B1F2A guibg=NONE ctermfg=234 ctermbg=NONE gui=italic cterm=italic
  hi @markup.strikethrough guifg=#738581 guibg=NONE ctermfg=244 ctermbg=NONE gui=strikethrough cterm=strikethrough
  hi @markup.link guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.link.url guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=underline cterm=underline
  hi @markup.link.label guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.raw guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.quote guifg=#43565D guibg=NONE ctermfg=239 ctermbg=NONE gui=italic cterm=italic
  hi @markup.list guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi @diff.plus guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi @diff.minus guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
  hi @diff.delta guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi! link @lsp.type.function @function
  hi! link @lsp.type.method @function.method
  hi! link @lsp.type.parameter @variable.parameter
  hi! link @lsp.type.property @property
  hi! link @lsp.type.type @type
  hi! link @lsp.type.class @type
  hi! link @lsp.type.interface @type
  hi! link @lsp.type.enum @type
  hi! link @lsp.type.enumMember @constant
  hi! link @lsp.type.namespace @module
  hi! link @lsp.type.keyword @keyword
  hi! link @lsp.type.decorator @attribute
  hi! link @lsp.type.macro @function.macro
  hi! link @lsp.type.variable @variable
  hi GitSignsAdd guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi GitSignsChange guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi GitSignsDelete guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
  hi! link GitSignsAddNr GitSignsAdd
  hi! link GitSignsChangeNr GitSignsChange
  hi! link GitSignsDeleteNr GitSignsDelete
  hi GitSignsCurrentLineBlame guifg=#738581 guibg=NONE ctermfg=244 ctermbg=NONE gui=italic cterm=italic
  hi TelescopeNormal guifg=#0B1F2A guibg=#DBE3DE ctermfg=234 ctermbg=254 gui=NONE cterm=NONE
  hi TelescopeBorder guifg=#B4C2BB guibg=#DBE3DE ctermfg=250 ctermbg=254 gui=NONE cterm=NONE
  hi TelescopePromptNormal guifg=#0B1F2A guibg=#D3DCD7 ctermfg=234 ctermbg=253 gui=NONE cterm=NONE
  hi TelescopePromptBorder guifg=#D3DCD7 guibg=#D3DCD7 ctermfg=253 ctermbg=253 gui=NONE cterm=NONE
  hi TelescopePromptTitle guifg=#E6ECE8 guibg=#75592A ctermfg=255 ctermbg=94 gui=bold cterm=bold
  hi TelescopePreviewTitle guifg=#E6ECE8 guibg=#2A6640 ctermfg=255 ctermbg=23 gui=bold cterm=bold
  hi TelescopeResultsTitle guifg=#DBE3DE guibg=#DBE3DE ctermfg=254 ctermbg=254 gui=NONE cterm=NONE
  hi TelescopeSelection guifg=#0B1F2A guibg=#C4D0C9 ctermfg=234 ctermbg=252 gui=bold cterm=bold
  hi TelescopeMatching guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
  hi TelescopePromptPrefix guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeNormal guifg=#0B1F2A guibg=#DBE3DE ctermfg=234 ctermbg=254 gui=NONE cterm=NONE
  hi NvimTreeFolderName guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeOpenedFolderName guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=bold cterm=bold
  hi NvimTreeFolderIcon guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeRootFolder guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
  hi NvimTreeGitDirty guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitNew guifg=#2A6640 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitDeleted guifg=#AE2F2A guibg=NONE ctermfg=124 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeSpecialFile guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=underline cterm=underline
  hi NvimTreeIndentMarker guifg=#B4C2BB guibg=NONE ctermfg=250 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeWinSeparator guifg=#CFD9D3 guibg=#E6ECE8 ctermfg=188 ctermbg=255 gui=NONE cterm=NONE
  hi WhichKey guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeyGroup guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeyDesc guifg=#0B1F2A guibg=NONE ctermfg=234 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeySeparator guifg=#738581 guibg=NONE ctermfg=244 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeyFloat guifg=NONE guibg=#DBE3DE ctermfg=NONE ctermbg=254 gui=NONE cterm=NONE
  hi CmpItemAbbr guifg=#0B1F2A guibg=NONE ctermfg=234 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemAbbrDeprecated guifg=#738581 guibg=NONE ctermfg=244 ctermbg=NONE gui=strikethrough cterm=strikethrough
  hi CmpItemAbbrMatch guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=bold cterm=bold
  hi CmpItemAbbrMatchFuzzy guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemMenu guifg=#738581 guibg=NONE ctermfg=244 ctermbg=NONE gui=italic cterm=italic
  hi CmpItemKindFunction guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindMethod guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindVariable guifg=#0B1F2A guibg=NONE ctermfg=234 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindKeyword guifg=#6A3893 guibg=NONE ctermfg=60 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindSnippet guifg=#9D346F guibg=NONE ctermfg=131 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindClass guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindInterface guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindModule guifg=#6E5C00 guibg=NONE ctermfg=58 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindProperty guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindField guifg=#0B6862 guibg=NONE ctermfg=23 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindConstant guifg=#9C4A0E guibg=NONE ctermfg=130 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindText guifg=#2F4249 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindFile guifg=#1D5BA6 guibg=NONE ctermfg=25 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindFolder guifg=#75592A guibg=NONE ctermfg=94 ctermbg=NONE gui=NONE cterm=NONE
  let g:terminal_color_0 = '#2F4249'
  let g:terminal_color_1 = '#AE2F2A'
  let g:terminal_color_2 = '#2A6640'
  let g:terminal_color_3 = '#6E5C00'
  let g:terminal_color_4 = '#1D5BA6'
  let g:terminal_color_5 = '#6A3893'
  let g:terminal_color_6 = '#0B6862'
  let g:terminal_color_7 = '#B4C2BB'
  let g:terminal_color_8 = '#43565D'
  let g:terminal_color_9 = '#952824'
  let g:terminal_color_10 = '#215032'
  let g:terminal_color_11 = '#4F4200'
  let g:terminal_color_12 = '#184D8C'
  let g:terminal_color_13 = '#5A307D'
  let g:terminal_color_14 = '#084C48'
  let g:terminal_color_15 = '#C4D0C9'
else
  let g:terminal_ansi_colors = ['#2F4249', '#AE2F2A', '#2A6640', '#6E5C00', '#1D5BA6', '#6A3893', '#0B6862', '#B4C2BB', '#43565D', '#952824', '#215032', '#4F4200', '#184D8C', '#5A307D', '#084C48', '#C4D0C9']
endif
