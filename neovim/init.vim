let mapleader = " "

syntax on
set number

set encoding=utf-8

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
nnoremap <leader>q :q<CR>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'preservim/nerdtree'

Plug 'mhinz/vim-startify' " 开屏界面
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

call plug#end()

" --- nerdtree ---
" 
nnoremap <leader>g :NERDTreeToggle<CR>
nnoremap <leader>v :NERDTreeFind<CR>
" --- nerdtree ---

" ---gruvbox---
colorscheme gruvbox
" ---gruvbox---

" ---vim-airline---
let g:airline#extensions#tabline#enabled = 1
" ---vim-airline---

" ---coc---
" 插件安装
let g:coc_global_extensions = ['coc-vimlsp']

" 调出自动补全 ctrl + o
inoremap <silent><expr> <c-o> coc#refresh()

" 调出帮助文档 leader + h
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" (coc)重命名 <leader> + r n
nmap <leader>rn <Plug>(coc-rename)

" Tab补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" ---coc---
