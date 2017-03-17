" Neovim config file
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sickill/vim-pasta'
Plugin 'tpope/vim-markdown'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'chriskempson/base16-vim'
Plugin 'benmills/vimux'
Plugin 'ervandew/supertab'
Plugin 'Yggdroot/indentLine'
Plugin 'godlygeek/csapprox'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'StanAngeloff/php.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'othree/yajs.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()
filetype plugin indent on

" Editor configuration
set nocompatible
set modelines=0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set noshowmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set novisualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set number
set undofile
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set autoindent " automatically set indent of new line
set smartindent
set guioptions-=m
set guioptions-=t
set guioptions-=T
set guioptions-=r
set guioptions-=L
set termguicolors
:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" Keybind
let mapleader = ","
" desactivate higlight
nnoremap <leader><space> :noh<cr>
" move to the corresponding parens, curly brace, etc
nnoremap <tab> %
vnoremap <tab> %
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
" shortcut to move between buffers
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" open vertical split
nnoremap <leader>s :vsplit <cr>
" open horizontal split
nnoremap <leader>h :split <cr>
" open tab
nnoremap <leader>t :tabnew <cr>
let base16colorspace=256
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
execute "set background=dark"
execute "colorscheme base16-railscasts"
set guifont=Inconsolata\ for\ Powerline\ Medium\ 12
let g:auto_save = 1 " active autosave plugin on startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
let g:auto_save_silent = 1  " do not display the auto-save notification
"NerdTree binded o ctrl-n
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
