" compatibility with vi turned off
set nocompatible

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Always on plugins

" Solarized color scheme
Plug 'iCyMind/NeoSolarized'

Plug 'mhinz/vim-startify'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Yggdroot/indentLine'

Plug 'w0rp/ale'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
" Just to add the python go-to-definition and similar features, autocompletion
" from this plugin is disabled
Plug 'davidhalter/jedi-vim'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'

Plug 'yuttie/comfortable-motion.vim'

Plug 'michaeljsmith/vim-indent-object'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'wellle/targets.vim'

Plug 'easymotion/vim-easymotion'

Plug 'chrisbra/NrrwRgn' 

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'lyokha/vim-xkbswitch'

" On-demand plugins

Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
" TODO with this plugin NerdTree lags too much!
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on':  'NERDTreeToggle' }

" TODO doesn't work with Semshi
" Plug 'tmhedberg/SimpylFold'

" TODO consider these plugins
" https://github.com/majutsushi/tagbar
" https://github.com/janko-m/vim-test
" Plug 'janko-m/vim-test'
" https://github.com/kshenoy/vim-signature
" https://github.com/roxma/vim-tmux-clipboard
" https://github.com/wesQ3/vim-windowswap
" https://github.com/qpkorr/vim-bufkill
" https://github.com/svermeulen/vim-easyclip
" " Makes operating on columns super easy
" Plug 'coderifous/textobj-word-column.vim'
" Plug 'kana/vim-textobj-datetime'
" Plug 'kana/vim-textobj-entire'
" Plug 'kana/vim-textobj-function'
" Plug 'kana/vim-textobj-user'
" Plug 'lucapette/vim-textobj-underscore'
" Plug 'vim-scripts/argtextobj.vim'

" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

" python2 provider
let g:python_host_prog = '/Users/eaorlov/.pyenv/versions/neovim2/bin/python'
" python3 provider
let g:python3_host_prog = '/Users/eaorlov/.pyenv/versions/neovim3/bin/python'

filetype plugin indent on

set encoding=utf-8

" russian language support
" set keymap=russian-jcukenwin
" set iminsert=0
" set imsearch=0

" enable true colors in terminal
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
" syntax highlighting
syntax on
" numbers of lines
set number
" solarized scheme options
set background=dark
colorscheme NeoSolarized
" default value is "normal", Setting this option to "high" or "low" does use the 
" same Solarized palette but simply shifts some values up or down in order to 
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "normal"
" Special characters such as trailing whitespace, tabs, newlines, when displayed 
" using ":set list" can be set to one of three levels depending on your needs. 
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"
" I make vertSplitBar a transparent background color. If you like the origin solarized vertSplitBar
" style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1
" If you wish to enable/disable NeoSolarized from displaying bold, underlined or italicized 
" typefaces, simply assign 1 or 0 to the appropriate variable. Default values:  
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0

set hidden

set updatetime=100

set clipboard=unnamed

" highlight ColorColumn ctermbg=gray
" set colorcolumn=80

" mouse support
set mouse=a

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" indenting
set autoindent
set expandtab
set shiftwidth=4
set tabstop=4

" split settings 
set splitbelow
set splitright

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" NerdTree to show hidden files
let g:NERDSpaceDelims=1
" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
let NERDTreeIgnore = ['\.DS_Store$', '\.pyc$', '\.javac']
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowBookmarks = 0

let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeSyntaxEnabledExtensions = ['bmp', 'c', 'h', 'c++', 'cpp', 'ini', 'jpg', 'jpeg', 'gif', 'markdown', 'md', 'png', 'py', 'pyd', 'pyo', 'sh', 'sql', 'vim', 'yml']


" devicons options
" set guifont=Roboto\ Mono\ Nerd\ Font\ Complete:h12

" " NERDTress File highlighting
" function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
"  exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
"  exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
" endfunction

" call NERDTreeHighlightFile('jade', 'green', 'none', 'green', )
" call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
" call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
" call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
" call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
" call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
" call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
" call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
" call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

" indent guides options
let g:indentLine_char = '│'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

" auto-pairs options
" TODO failed to make it work with other bindings
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''

" airline options 
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

" remap leader key
let mapleader=" "

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" fzf options
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" Fugitive options
let g:fugitive_git_executable = 'LANG=ru_RU.UTF-8 git'

" GitGutter options
" TODO choose suitable utf-8 symbols
" let g:gitgutter_sign_added = '✙'
" let g:gitgutter_sign_modified = '✎'
" let g:gitgutter_sign_removed = '✄'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = 'ww'
" let g:gitgutter_highlight_lines = 0
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual

" ALE options
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let b:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {
\   'python': ['black', 'isort', 'remove_trailing_lines'],
\}
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)

" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#sources#jedi#server_timeout = 10
let g:deoplete#sources#jedi#statement_length = 50
let g:deoplete#sources#jedi#enable_cache = 1
let g:deoplete#sources#jedi#show_docstring = 0
" complete with words from any opened file
let g:context_filetype#same_filetypes = {}
let g:context_filetype#same_filetypes._ = '_'
" TODO make jumping outside project directory work 
" let g:deoplete#sources#jedi#extra_path = 
" jedi options
" Disable autocompletion (using deoplete instead)
let g:jedi#completions_enabled = 0
" Go to definition
let g:jedi#goto_command = "<leader>d"
" Find assignments
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#documentation_command = "K"
" Find ocurrences
let g:jedi#usages_command = "<leader>n"
" TODO couldn't make any other combination work
let g:jedi#completions_command = "<C-N>"
let g:jedi#rename_command = "<leader>r"

" Pythonsense options
map <buffer> ac <Plug>(PythonsenseOuterClassTextObject)
map <buffer> ic <Plug>(PythonsenseInnerClassTextObject)
map <buffer> af <Plug>(PythonsenseOuterFunctionTextObject)
map <buffer> if <Plug>(PythonsenseInnerFunctionTextObject)
map <buffer> ad <Plug>(PythonsenseOuterDocStringTextObject)
map <buffer> id <Plug>(PythonsenseInnerDocStringTextObject)

map <buffer> ]] <Plug>(PythonsenseStartOfNextPythonClass)
map <buffer> ][ <Plug>(PythonsenseEndOfPythonClass)
map <buffer> [[ <Plug>(PythonsenseStartOfPythonClass)
map <buffer> [] <Plug>(PythonsenseEndOfPreviousPythonClass)
map <buffer> ]m <Plug>(PythonsenseStartOfNextPythonFunction)
map <buffer> ]M <Plug>(PythonsenseEndOfPythonFunction)
map <buffer> [m <Plug>(PythonsenseStartOfPythonFunction)
map <buffer> [M <Plug>(PythonsenseEndOfPreviousPythonFunction)

map <buffer> g: <Plug>(PythonsensePyWhere)

" easymotion options
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" <Leader>f{char} to move to {char}
map  s <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
map <Leader>f <Plug>(easymotion-bd-f2)
nmap <Leader>f <Plug>(easymotion-overwin-f2)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
" Move to line
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" TODO look into other easymotion plugins (i.e. search, etc)
" https://github.com/easymotion/vim-easymotion

" grepper options
nnoremap <leader>g :Grepper -tool git<cr>
nnoremap <leader>G :Grepper -tool ag<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
" " Optional. The default behaviour should work for most users.
" let g:grepper               = {}
" let g:grepper.tools         = ['git', 'ag']
" let g:grepper.jump          = 1
" let g:grepper.next_tool     = '<leader>g'
" let g:grepper.simple_prompt = 1
" let g:grepper.quickfix      = 0
command! TODO :Grepper
      \ -noprompt
      \ -tool git
      \ -grepprg git grep -nIi '\(TODO\|FIXME\)'

" disable arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" toggle relative numbering
nnoremap <F4> :set relativenumber!<CR>

" toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
