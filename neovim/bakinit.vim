let mapleader = " "


syntax on
set number

set encoding=utf-8

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 智能大小写
set smartcase
" 搜索忽略大小写
set ignorecase
" 搜索完成取消高亮
nnoremap <leader><CR> :nohlsearch<CR>

" colorscheme slate

" 设置Tab长度为4空格
set tabstop=4
" 设置自动缩进长度为4空格
set shiftwidth=4
" 继承前一行的缩进方式，适用于多行注释
set autoindent

inoremap jj <Esc>

" 切换窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


nnoremap <leader>w :w<CR>
inoremap <leader>w <Esc>:w<CR>



call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


call plug#end()

" theme
colorscheme gruvbox
" theme

" airline
let g:airline_theme='gruvbox'
" airline
