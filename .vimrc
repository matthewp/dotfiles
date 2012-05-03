syntax on
set number

set shiftwidth=2 tabstop=2 autoindent cindent expandtab

call pathogen#infect()

set nocompatible
filetype plugin indent on

if did_filetype()
  finish
endif
if getline(1) =~ '#!/usr/bin/env node'
  setfiletype javascript
endif
