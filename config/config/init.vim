set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('previm/previm')
  call dein#add('dag/vim-fish')

  if dein#check_install()
      call dein#install()
  endif

  call dein#end()
  call dein#save_state()
endif

let g:deoplete#enable_at_startup = 1

syntax enable
filetype plugin indent on
filetype plugin on

set number
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
noremap <C-l> <C-l> :noh<CR>
noremap <S-h> ^
noremap <S-l> $

augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
let g:previm_open_cmd = "xdg-open"
