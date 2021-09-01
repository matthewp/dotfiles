if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('pangloss/vim-javascript')
 call dein#add('editorconfig/editorconfig-vim')
 call dein#add('kien/ctrlp.vim')
 call dein#add('leafgarland/typescript-vim')
 call dein#add('zah/nim.vim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

 call dein#add('dracula/vim')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax on
color dracula

set number
set mouse=a

set shiftwidth=2 tabstop=2 autoindent cindent expandtab
set autochdir

set backspace=indent,eol,start

set cc=80

let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_open_new_file = 'v'
let g:ctrlp_custom_ignore = { 'dir': 'node_modules$' }
nnoremap <leader>f :CtrlP<cr>
nnoremap <leader>m :CtrlPMRUFiles<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <f5> :CtrlPClearCache<cr>
set wildignore+=*/tmp/*,*.so,*swp,*zip,*.log,.DS_Store
