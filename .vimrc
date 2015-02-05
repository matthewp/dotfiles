if has('vim_starting')
  set nocompatible " Be iMproved
  " Required

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'bling/vim-airline'
NeoBundle 'othree/yajs.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'mustache/vim-mustache-handlebars'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'lambdatoast/elm.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'kien/ctrlp.vim'

NeoBundle 'nanotech/jellybeans.vim'

NeoBundle 'jceb/vim-orgmode'

filetype plugin indent on

NeoBundleCheck

syntax on
set number
set mouse=a
colorscheme jellybeans

set shiftwidth=2 tabstop=2 autoindent cindent expandtab
set autochdir

set backspace=indent,eol,start

" Turn off code-folding
set nofoldenable

set cc=80
hi ColorColumn guibg=grey17


" ctrlp
let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_custom_ignore = { 'dir': 'node_modules$' }
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <f5> :CtrlPClearCache<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.log,.DS_Store

set nocompatible
filetype plugin indent on

if did_filetype()
  finish
endif
if getline(1) =~ '#!/usr/bin/env node'
  setfiletype javascript
endif

au BufNewFile,BufRead *.stache set filetype=mustache
