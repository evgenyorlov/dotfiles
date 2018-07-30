" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Always on plugins

" Solarized color scheme
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" On-demand plugins

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

" compatibility with vi turned off
set nocompatible

" python2 provider
let g:python_host_prog = '/Users/eaorlov/.pyenv/versions/neovim2/bin/python'
" python3 provider
let g:python3_host_prog = '/Users/eaorlov/.pyenv/versions/neovim3/bin/python'

" enable true colors in terminal
set termguicolors
" syntax highlighting
syntax on
" numbers of lines
set number
" solarized scheme options
set background=dark
colorscheme solarized8_flat

" indenting
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

" search
set hlsearch
set incsearch

" NerdTree to show hidden files
let NERDTreeShowHidden=1


" mappings

map <C-n> :NERDTreeToggle<CR>
