" BASIC SETUP

" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" Set colorscheme
colorscheme desert

" Set relative line number
" set relativenumber
set number

" Set tab spacing
set softtabstop=4 noexpandtab
" Set indentation
set shiftwidth=4

" FINDING FILES:

" Search down into subfolders
" Provides tab completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER
" - :b lets you autocomplete any open buffer
" Let's say you have two open files. Vim will have those files in the buffer.
" If we wanna know what are all the files in buffer, we can do :ls
" which will list all the files in buffer.

" If we wanna jump to those files in buffer, we can do :b<space><tab> which
" lists all the files in the buffer
" or we can do :b<space><substring of the filename>


" the below lines are for installing vim-plug and put it inside /.vim/autoload
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"---------------------------- VIM PLUG ---------------------------
call plug#begin()
Plug 'prabirshrestha/vim-lsp'
call plug#end()
"---------------------------- END VIM PLUG -----------------------
