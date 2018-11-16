" set terminal to 256 colors
set t_Co=256
set t_BE=

" enable line numbers
set nu

" use elflord colors
colo elflord

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline Configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ 'c'  : 'C',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ }
set noshowmode

" vim-airline-themes Configs
let g:airline_theme = 'bubblegum'

" NERDTree configs
map <C-n> :NERDTreeToggle<CR>
"autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax enable

" default tab behavior
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldnestmax=1

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py,*.sh
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

highlight BadWhitespace guibg=red ctermbg=darkred
match BadWhitespace /\s\+$/
