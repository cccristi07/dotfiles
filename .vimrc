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
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'airblade/vim-gitgutter'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdcommenter'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required


call plug#begin()

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

call plug#end()


" enable filetype plugins
filetype plugin on    " required
filetype indent on


set splitbelow
set splitright

let mapleader = ","
let g:mapleader = ","



"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
set autoread
" Enable folding with the spacebar
nnoremap <space> za

"let g:SimpylFold_docstring_preview=1

"au BufNewFile,BufRead *.py
    "\ set tabstop=4 |
    "\ set softtabstop=4 |
    "\ set shiftwidth=4 |
    "\ set textwidth=79 |
    "\ set expandtab |
    "\ set autoindent |
    "\ set fileformat=unix 

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match "/\s\+$/"

set encoding=utf-8

nmap <C-N> :NERDTreeToggle<CR>

call togglebg#map("<F5>")
set ruler
set incsearch
syntax enable


set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai
set si
set wrap


"let python_highlight_all=1

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu

set clipboard=unnamedplus
autocmd vimenter * NERDTree

"set cindent

au FileType python source ~/.vim/ftplugin/python.vim
au FileType python source ~/.vim/ftplugin/c.vim
