" Highland Midnight -- Highland color scheme by Shanks IT Solutions
" Works in Vim 8.2+/9 and Neovim. Generated from palette.json, do not edit.
hi clear
if exists('syntax_on') | syntax reset | endif
set background=dark
let g:colors_name = 'highland-midnight'

hi Normal guifg=#E6ECE8 guibg=#0B1F2A ctermfg=255 ctermbg=234 gui=NONE cterm=NONE
hi NormalNC guifg=#E6ECE8 guibg=#0B1F2A ctermfg=255 ctermbg=234 gui=NONE cterm=NONE
hi NormalFloat guifg=#E6ECE8 guibg=#081822 ctermfg=255 ctermbg=233 gui=NONE cterm=NONE
hi FloatBorder guifg=#2E4A57 guibg=#081822 ctermfg=238 ctermbg=233 gui=NONE cterm=NONE
hi Cursor guifg=#0B1F2A guibg=#C6A46A ctermfg=234 ctermbg=179 gui=NONE cterm=NONE
hi! link lCursor Cursor
hi! link CursorIM Cursor
hi CursorLine guifg=NONE guibg=#132935 ctermfg=NONE ctermbg=235 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#132935 ctermfg=NONE ctermbg=235 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#081822 ctermfg=NONE ctermbg=233 gui=NONE cterm=NONE
hi LineNr guifg=#47606C guibg=NONE ctermfg=240 ctermbg=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
hi SignColumn guifg=#47606C guibg=#0B1F2A ctermfg=240 ctermbg=234 gui=NONE cterm=NONE
hi FoldColumn guifg=#47606C guibg=#0B1F2A ctermfg=240 ctermbg=234 gui=NONE cterm=NONE
hi Folded guifg=#97ACB4 guibg=#18303C ctermfg=109 ctermbg=235 gui=NONE cterm=NONE
hi Visual guifg=NONE guibg=#244E40 ctermfg=NONE ctermbg=238 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=#244E40 ctermfg=NONE ctermbg=238 gui=NONE cterm=NONE
hi Search guifg=#0B1F2A guibg=#C6A46A ctermfg=234 ctermbg=179 gui=NONE cterm=NONE
hi IncSearch guifg=#0B1F2A guibg=#E69A5E ctermfg=234 ctermbg=173 gui=bold cterm=bold
hi! link CurSearch IncSearch
hi Substitute guifg=#0B1F2A guibg=#E8736B ctermfg=234 ctermbg=167 gui=NONE cterm=NONE
hi MatchParen guifg=#C6A46A guibg=#223D49 ctermfg=179 ctermbg=237 gui=bold cterm=bold
hi Pmenu guifg=#E6ECE8 guibg=#18303C ctermfg=255 ctermbg=235 gui=NONE cterm=NONE
hi PmenuSel guifg=#0B1F2A guibg=#C6A46A ctermfg=234 ctermbg=179 gui=bold cterm=bold
hi PmenuSbar guifg=NONE guibg=#223D49 ctermfg=NONE ctermbg=237 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#47606C ctermfg=NONE ctermbg=240 gui=NONE cterm=NONE
hi StatusLine guifg=#E6ECE8 guibg=#18303C ctermfg=255 ctermbg=235 gui=NONE cterm=NONE
hi StatusLineNC guifg=#5F7883 guibg=#081822 ctermfg=66 ctermbg=233 gui=NONE cterm=NONE
hi TabLine guifg=#97ACB4 guibg=#081822 ctermfg=109 ctermbg=233 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=#05111A ctermfg=NONE ctermbg=233 gui=NONE cterm=NONE
hi TabLineSel guifg=#E6ECE8 guibg=#223D49 ctermfg=255 ctermbg=237 gui=bold cterm=bold
hi VertSplit guifg=#2E4A57 guibg=#0B1F2A ctermfg=238 ctermbg=234 gui=NONE cterm=NONE
hi WinSeparator guifg=#2E4A57 guibg=#0B1F2A ctermfg=238 ctermbg=234 gui=NONE cterm=NONE
hi WildMenu guifg=#0B1F2A guibg=#C6A46A ctermfg=234 ctermbg=179 gui=NONE cterm=NONE
hi NonText guifg=#2E4A57 guibg=NONE ctermfg=238 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#2E4A57 guibg=NONE ctermfg=238 ctermbg=NONE gui=NONE cterm=NONE
hi Whitespace guifg=#2E4A57 guibg=NONE ctermfg=238 ctermbg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#223D49 guibg=NONE ctermfg=237 ctermbg=NONE gui=NONE cterm=NONE
hi Conceal guifg=#5F7883 guibg=NONE ctermfg=66 ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
hi ErrorMsg guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=bold cterm=bold
hi WarningMsg guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
hi MoreMsg guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
hi ModeMsg guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=bold cterm=bold
hi Question guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#254341 ctermfg=NONE ctermbg=237 gui=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#1E384D ctermfg=NONE ctermbg=236 gui=NONE cterm=NONE
hi DiffDelete guifg=#E8736B guibg=#373037 ctermfg=167 ctermbg=236 gui=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#335373 ctermfg=NONE ctermbg=239 gui=bold cterm=bold
hi diffAdded guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
hi diffChanged guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#E8736B
hi SpellCap guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#E9D27A
hi SpellRare guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#BE92DF
hi SpellLocal guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#62C3BA
hi QuickFixLine guifg=NONE guibg=#244E40 ctermfg=NONE ctermbg=238 gui=bold cterm=bold
hi Comment guifg=#7A929C guibg=NONE ctermfg=245 ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=bold cterm=bold
hi Identifier guifg=#E6ECE8 guibg=NONE ctermfg=255 ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialChar guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=NONE cterm=NONE
hi Tag guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#7A929C guibg=NONE ctermfg=245 ctermbg=NONE gui=italic cterm=italic
hi Debug guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=underline cterm=underline
hi Ignore guifg=#47606C guibg=NONE ctermfg=240 ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=bold cterm=bold
hi Todo guifg=#0B1F2A guibg=#C6A46A ctermfg=234 ctermbg=179 gui=bold cterm=bold
hi htmlTag guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingDelimiter guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
hi markdownH1 guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
hi markdownH2 guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=bold cterm=bold
hi markdownCode guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=underline cterm=underline
hi markdownLinkText guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE

if has('nvim')
  hi DiagnosticError guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#E8736B guibg=#262932 ctermfg=167 ctermbg=235 gui=NONE cterm=NONE
  hi DiagnosticUnderlineError guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#E8736B
  hi DiagnosticSignError guifg=#E8736B guibg=#0B1F2A ctermfg=167 ctermbg=234 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingError DiagnosticError
  hi DiagnosticWarn guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarn guifg=#E69A5E guibg=#252E30 ctermfg=173 ctermbg=236 gui=NONE cterm=NONE
  hi DiagnosticUnderlineWarn guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#E69A5E
  hi DiagnosticSignWarn guifg=#E69A5E guibg=#0B1F2A ctermfg=173 ctermbg=234 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingWarn DiagnosticWarn
  hi DiagnosticInfo guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#74A9EA guibg=#183041 ctermfg=110 ctermbg=235 gui=NONE cterm=NONE
  hi DiagnosticUnderlineInfo guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#74A9EA
  hi DiagnosticSignInfo guifg=#74A9EA guibg=#0B1F2A ctermfg=110 ctermbg=234 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingInfo DiagnosticInfo
  hi DiagnosticHint guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#62C3BA guibg=#15333B ctermfg=73 ctermbg=235 gui=NONE cterm=NONE
  hi DiagnosticUnderlineHint guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#62C3BA
  hi DiagnosticSignHint guifg=#62C3BA guibg=#0B1F2A ctermfg=73 ctermbg=234 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingHint DiagnosticHint
  hi DiagnosticOk guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextOk guifg=#82C293 guibg=#193337 ctermfg=108 ctermbg=236 gui=NONE cterm=NONE
  hi DiagnosticUnderlineOk guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE gui=undercurl cterm=underline guisp=#82C293
  hi DiagnosticSignOk guifg=#82C293 guibg=#0B1F2A ctermfg=108 ctermbg=234 gui=NONE cterm=NONE
  hi! link DiagnosticFloatingOk DiagnosticOk
  hi LspReferenceText guifg=NONE guibg=#223D49 ctermfg=NONE ctermbg=237 gui=NONE cterm=NONE
  hi LspReferenceRead guifg=NONE guibg=#223D49 ctermfg=NONE ctermbg=237 gui=NONE cterm=NONE
  hi LspReferenceWrite guifg=NONE guibg=#223D49 ctermfg=NONE ctermbg=237 gui=bold cterm=bold
  hi LspInlayHint guifg=#5F7883 guibg=#122833 ctermfg=66 ctermbg=235 gui=italic cterm=italic
  hi LspSignatureActiveParameter guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=bold cterm=bold
  hi! link LspCodeLens Comment
  hi @comment guifg=#7A929C guibg=NONE ctermfg=245 ctermbg=NONE gui=italic cterm=italic
  hi! link @comment.todo Todo
  hi @keyword guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.function guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.return guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.operator guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.import guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.conditional guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.repeat guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.exception guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.modifier guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi @keyword.type guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi @function guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.call guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.builtin guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.method guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.method.call guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi @method guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi @function.macro guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @constructor guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi @string guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
  hi @string.escape guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=NONE cterm=NONE
  hi @string.regexp guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi @string.special guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=NONE cterm=NONE
  hi @character guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
  hi @number guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @number.float guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @float guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @boolean guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=bold cterm=bold
  hi @constant guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @constant.builtin guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @constant.macro guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @variable guifg=#E6ECE8 guibg=NONE ctermfg=255 ctermbg=NONE gui=NONE cterm=NONE
  hi @variable.builtin guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=italic cterm=italic
  hi @variable.parameter guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=italic cterm=italic
  hi @parameter guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=italic cterm=italic
  hi @variable.member guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi @property guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi @field guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi @type guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi @type.builtin guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi @type.definition guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi @module guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi @namespace guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi @attribute guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi @label guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi @operator guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation.delimiter guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation.bracket guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
  hi @punctuation.special guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag.attribute guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag.delimiter guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
  hi @tag.builtin guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.heading guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
  hi @markup.heading.1 guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
  hi @markup.heading.2 guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=bold cterm=bold
  hi @markup.heading.3 guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=bold cterm=bold
  hi @markup.strong guifg=#E6ECE8 guibg=NONE ctermfg=255 ctermbg=NONE gui=bold cterm=bold
  hi @markup.italic guifg=#E6ECE8 guibg=NONE ctermfg=255 ctermbg=NONE gui=italic cterm=italic
  hi @markup.strikethrough guifg=#5F7883 guibg=NONE ctermfg=66 ctermbg=NONE gui=strikethrough cterm=strikethrough
  hi @markup.link guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.link.url guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=underline cterm=underline
  hi @markup.link.label guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.raw guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
  hi @markup.quote guifg=#97ACB4 guibg=NONE ctermfg=109 ctermbg=NONE gui=italic cterm=italic
  hi @markup.list guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi @diff.plus guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
  hi @diff.minus guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
  hi @diff.delta guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
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
  hi GitSignsAdd guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
  hi GitSignsChange guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi GitSignsDelete guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
  hi! link GitSignsAddNr GitSignsAdd
  hi! link GitSignsChangeNr GitSignsChange
  hi! link GitSignsDeleteNr GitSignsDelete
  hi GitSignsCurrentLineBlame guifg=#5F7883 guibg=NONE ctermfg=66 ctermbg=NONE gui=italic cterm=italic
  hi TelescopeNormal guifg=#E6ECE8 guibg=#081822 ctermfg=255 ctermbg=233 gui=NONE cterm=NONE
  hi TelescopeBorder guifg=#2E4A57 guibg=#081822 ctermfg=238 ctermbg=233 gui=NONE cterm=NONE
  hi TelescopePromptNormal guifg=#E6ECE8 guibg=#18303C ctermfg=255 ctermbg=235 gui=NONE cterm=NONE
  hi TelescopePromptBorder guifg=#18303C guibg=#18303C ctermfg=235 ctermbg=235 gui=NONE cterm=NONE
  hi TelescopePromptTitle guifg=#0B1F2A guibg=#C6A46A ctermfg=234 ctermbg=179 gui=bold cterm=bold
  hi TelescopePreviewTitle guifg=#0B1F2A guibg=#82C293 ctermfg=234 ctermbg=108 gui=bold cterm=bold
  hi TelescopeResultsTitle guifg=#081822 guibg=#081822 ctermfg=233 ctermbg=233 gui=NONE cterm=NONE
  hi TelescopeSelection guifg=#E6ECE8 guibg=#223D49 ctermfg=255 ctermbg=237 gui=bold cterm=bold
  hi TelescopeMatching guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
  hi TelescopePromptPrefix guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeNormal guifg=#E6ECE8 guibg=#081822 ctermfg=255 ctermbg=233 gui=NONE cterm=NONE
  hi NvimTreeFolderName guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeOpenedFolderName guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=bold cterm=bold
  hi NvimTreeFolderIcon guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeRootFolder guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
  hi NvimTreeGitDirty guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitNew guifg=#82C293 guibg=NONE ctermfg=108 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeGitDeleted guifg=#E8736B guibg=NONE ctermfg=167 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeSpecialFile guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=underline cterm=underline
  hi NvimTreeIndentMarker guifg=#2E4A57 guibg=NONE ctermfg=238 ctermbg=NONE gui=NONE cterm=NONE
  hi NvimTreeWinSeparator guifg=#05111A guibg=#0B1F2A ctermfg=233 ctermbg=234 gui=NONE cterm=NONE
  hi WhichKey guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeyGroup guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeyDesc guifg=#E6ECE8 guibg=NONE ctermfg=255 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeySeparator guifg=#5F7883 guibg=NONE ctermfg=66 ctermbg=NONE gui=NONE cterm=NONE
  hi WhichKeyFloat guifg=NONE guibg=#081822 ctermfg=NONE ctermbg=233 gui=NONE cterm=NONE
  hi CmpItemAbbr guifg=#E6ECE8 guibg=NONE ctermfg=255 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemAbbrDeprecated guifg=#5F7883 guibg=NONE ctermfg=66 ctermbg=NONE gui=strikethrough cterm=strikethrough
  hi CmpItemAbbrMatch guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=bold cterm=bold
  hi CmpItemAbbrMatchFuzzy guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemMenu guifg=#5F7883 guibg=NONE ctermfg=66 ctermbg=NONE gui=italic cterm=italic
  hi CmpItemKindFunction guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindMethod guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindVariable guifg=#E6ECE8 guibg=NONE ctermfg=255 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindKeyword guifg=#BE92DF guibg=NONE ctermfg=140 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindSnippet guifg=#E393C1 guibg=NONE ctermfg=175 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindClass guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindInterface guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindModule guifg=#E9D27A guibg=NONE ctermfg=186 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindProperty guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindField guifg=#62C3BA guibg=NONE ctermfg=73 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindConstant guifg=#E69A5E guibg=NONE ctermfg=173 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindText guifg=#B7C7CC guibg=NONE ctermfg=251 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindFile guifg=#74A9EA guibg=NONE ctermfg=110 ctermbg=NONE gui=NONE cterm=NONE
  hi CmpItemKindFolder guifg=#C6A46A guibg=NONE ctermfg=179 ctermbg=NONE gui=NONE cterm=NONE
  let g:terminal_color_0 = '#223D49'
  let g:terminal_color_1 = '#E8736B'
  let g:terminal_color_2 = '#82C293'
  let g:terminal_color_3 = '#E9D27A'
  let g:terminal_color_4 = '#74A9EA'
  let g:terminal_color_5 = '#BE92DF'
  let g:terminal_color_6 = '#62C3BA'
  let g:terminal_color_7 = '#B7C7CC'
  let g:terminal_color_8 = '#47606C'
  let g:terminal_color_9 = '#EC8C85'
  let g:terminal_color_10 = '#97CCA5'
  let g:terminal_color_11 = '#EDDB94'
  let g:terminal_color_12 = '#8FB9EE'
  let g:terminal_color_13 = '#CCAAE6'
  let g:terminal_color_14 = '#78CBC4'
  let g:terminal_color_15 = '#E6ECE8'
else
  let g:terminal_ansi_colors = ['#223D49', '#E8736B', '#82C293', '#E9D27A', '#74A9EA', '#BE92DF', '#62C3BA', '#B7C7CC', '#47606C', '#EC8C85', '#97CCA5', '#EDDB94', '#8FB9EE', '#CCAAE6', '#78CBC4', '#E6ECE8']
endif
