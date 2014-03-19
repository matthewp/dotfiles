if has('vim_starting')
  set nocompatible " Be iMproved
  " Required

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'bling/vim-airline'
NeoBundle 'jordwalke/flatlandia'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'groenewege/vim-less'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'mustache/vim-mustache-handlebars'

filetype plugin indent on

NeoBundleCheck

syntax on
set number
set mouse=a
colorscheme desert

set shiftwidth=2 tabstop=2 autoindent cindent expandtab
set autochdir

set backspace=indent,eol,start

set cc=80
hi ColorColumn guibg=grey17

set nocompatible
filetype plugin indent on

if did_filetype()
  finish
endif
if getline(1) =~ '#!/usr/bin/env node'
  setfiletype javascript
endif
