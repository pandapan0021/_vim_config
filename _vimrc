" ---------------------------------Global-------
  set t_Co=16
  set nu
  set encoding=UTF-8
  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  "YCM
  Plugin 'Valloric/YouCompleteMe'

  "plugin management
  Plugin 'VundleVim/Vundle.vim'

  "markdown mode for vim
  Plugin 'godlygeek/tabular'
  Plugin 'plasticboy/vim-markdown'

  "airline and themes
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'

  "fileHeader
  Plugin 'pandapan0021/vim-fileHeader'

  "ruby support
  Plugin 'vim-ruby/vim-ruby'

  call vundle#end()
  set ruler
  filetype plugin indent on
  set shell=/bin/bash
  let g:airline_themee = 'simple'
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep= ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  set tabstop=4
  set sw=4
  nnoremap <f2> :TogglefileHeader<enter>
  let g:author = '00ggo00'
  let g:email = 'pandapan0021@gmail.com'
  let g:license = 'MIT'
  let g:fileHeader_copyright = '00ggo00 reserved'
  set fileformat=unix
  set laststatus=2
  set shellslash

  "markdown Options
  let g:vim_markdown_folding_disabled = 1

  "airline configure
  if !exists('g:airline_symbols')
	let g:airline_symbols={}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '������'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.maxlinenr = '☰'
  let g:airline_symbols.maxlinenr = ''
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = 'Ξ'

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''

  " old vim-powerline symbols
  let g:airline_left_sep = '⮀'
  let g:airline_left_alt_sep = '⮁'
  let g:airline_right_sep = '⮂'
  let g:airline_right_alt_sep = '⮃'
  let g:airline_symbols.branch = '⭠'
  let g:airline_symbols.readonly = '⭤'
  let g:airline_symbols.linenr = '⭡'

  " YCM
  let g:ycm_python_binary_path = 'python'

  " auto +x mod for script
  function! s:newfile()
	  let line = getline(1)
	  if line =~ '\v#!.*'
	  	exec 'w'
	  	exec ':silent !chmod +x %'
	  endif
  endfunction
  autocmd QuitPre * call s:newfile()
" ------------------------------End Global------
