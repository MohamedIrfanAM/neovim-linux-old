  set encoding=utf-8
  let g:airline_powerline_fonts = 1

  let g:airline#extensions#tabline#enabled = 1
  
  let g:airline#extensions#tabline#buffer_nr_show = 1 

" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'

" One dark thme
" let g:airline_theme = 'onedark'

" Nord theme
let g:nord_uniform_status_lines = 0
"
" Airline symbols
  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
      endif
"
""     " unicode symbols
      let g:airline_left_sep = '»'
      let g:airline_left_sep = '▶'
      let g:airline_right_sep = '«'
      let g:airline_right_sep = '◀'

      let g:airline_symbols.linenr = '␊'
      let g:airline_symbols.linenr = '␤'
      let g:airline_symbols.linenr = '¶'
      let g:airline_symbols.branch = '⎇'
      let g:airline_symbols.paste = 'ρ'
      let g:airline_symbols.paste = 'Þ'
      let g:airline_symbols.paste = '∥'
      let g:airline_symbols.whitespace = 'Ξ'
"

      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''
