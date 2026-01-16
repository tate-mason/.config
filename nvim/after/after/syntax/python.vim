" Only affect Neopyter driver buffers
if expand('%:t') =~# '\.ju\.py$'
  " Replace python syntax with julia syntax
  syntax clear
  runtime! syntax/julia.vim
  let b:current_syntax = 'julia'
endif
