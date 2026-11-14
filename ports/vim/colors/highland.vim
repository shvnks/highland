" Highland -- picks Midnight (dark) or Mist (light) from &background
if &background ==# 'light'
  runtime colors/highland-mist.vim
else
  runtime colors/highland-midnight.vim
endif
let g:colors_name = 'highland'
