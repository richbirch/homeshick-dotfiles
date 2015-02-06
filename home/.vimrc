set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'joonty/vdebug.git'
Bundle 'joonty/vim-phpqa.git'
Bundle 'joonty/vim-phpunitqf.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set background=dark
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set number
set cursorline
set ruler
set showmatch
set hidden

" navigate through buffers
:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprevious<CR>
:nnoremap <C-w> :bdelete<CR>

" navigate through split windows
" down
nnoremap <C-j> <C-w><C-j>
" up
nnoremap <C-k> <C-w><C-k>
" right
nnoremap <C-End> <C-w>l
" left
nnoremap <C-Home> <C-w>h

syntax on

" Map <CTRL>-B to run PHP parser check
"noremap <C-B> :!php -l %<CR>

" Map nerdtree to Ctrl-e
map <C-o> :NERDTreeToggle<CR>

" Disable the new type of arrows as they break everything
let NERDTreeDirArrows=0
" Close the tree on opening a file
let NERDTreeQuitOnOpen=1

" sets 'path' to:
" - the directory of the current file
" - every subdirectory of the "current directory"
set path=.,**

" enables the wildmenu
set wildmenu

" ignore specific directories and files
"set wildignore+=*.min.*

" case-insensitive search
"set wildignorecase

" keep cursor line vertically in the centre
set so=999

" xdebug vagrant setup
if !exists("g:vdebug_options")
    let g:vdebug_options = {}
endif

let g:vdebug_options['server'] = "192.168.1.1"
let g:vdebug_options['path_maps'] = { "/var/www/html": "/home/rich/dev" }

let g:phpqa_codesniffer_args = "--standard=PSR2"

nnoremap <C-t> :Test<CR>
nnoremap <C-S-t> :Test %<CR>

