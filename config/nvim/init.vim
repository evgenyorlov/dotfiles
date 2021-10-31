" compatibility with vi turned off
set nocompatible

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Always on plugins

" Color scheme
Plug 'arcticicestudio/nord-vim'
" Plug 'iCyMind/NeoSolarized'

Plug 'mhinz/vim-startify'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Yggdroot/indentLine'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-jedi'
" " Just to add the python go-to-definition and similar features, autocompletion
" " from this plugin is disabled
" Plug 'davidhalter/jedi-vim'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Use TAB for code completion
" Plug 'ervandew/supertab'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'

Plug 'jiangmiao/auto-pairs'

Plug 'sheerun/vim-polyglot'

Plug 'yuttie/comfortable-motion.vim'

Plug 'michaeljsmith/vim-indent-object'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'wellle/targets.vim'
" https://github.com/wellle/targets.vim/blob/master/cheatsheet.md

Plug 'easymotion/vim-easymotion'

Plug 'chrisbra/NrrwRgn'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'tmhedberg/SimpylFold'

Plug 'christoomey/vim-tmux-navigator'

" TODO fork and amend the plugin to support on-premise bitbucket deployments
" Plug 'tommcdo/vim-fubitive'

" On-demand plugins

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
" TODO with this plugin NerdTree lags too much!
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on':  'NERDTreeToggle' }

Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }

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
" https://github.com/svermeulen/vim-easyclip
" Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()

" python2 provider
let g:python_host_prog = expand('~/.pyenv/versions/neovim2/bin/python')
" python3 provider
let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')

filetype plugin indent on

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" russian language support
" set keymap=russian-jcukenwin
" set iminsert=0
" set imsearch=0

" enable true colors in terminal
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set termguicolors
" syntax highlighting
syntax on

" nord color scheme
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
let g:nord_uniform_diff_background = 1
" All the options should be set before colorscheme command
colorscheme nord

" if hidden is not set, TextEdit might fail.
set hidden

set updatetime=100

set clipboard=unnamed

" highlight ColorColumn ctermbg=gray
" set colorcolumn=80

" always show signcolumns
set signcolumn=yes

" mouse support
set mouse=a

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" set autochdir

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


" keep all undos between vim sessions
set undofile
set undodir="$HOME/.VIM_UNDO_FILES"

" Remember cursor position between vim sessions
if has("autocmd")
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif
    " center buffer around cursor when opening files
endif
autocmd BufRead * normal zz

" NerdTree to show hidden files
let g:NERDSpaceDelims=1
let g:NERDTreeChDirMode=2
" Make nerdtree look nice
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
let g:NERDTreeIgnore = ['\.DS_Store$', '\.pyc$', '\.javac']
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

" indent guides options
let g:indentLine_char = '│'
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
" Этот плагин ставит conceallvel
" из-за которого не видна часть символов в markdown
" https://vi.stackexchange.com/questions/12520/markdown-in-neovim-which-plugin-sets-conceallevel-2/19229
let g:indentLine_fileTypeExclude = ['markdown']

" auto-pairs options
" TODO failed to make it work with other bindings
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''

" airline options
" let g:airline_theme='solarized'
" let g:airline_solarized_bg='light'
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1

" remap leader key
let mapleader=" "

" let's remap : -> ; in order not to press Shift every time
nnoremap ; :
vnoremap ; :

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
nmap <Leader>; :Buffers<CR>
nmap <Leader>t :GFiles<CR>
nmap <Leader>T :Tags<CR>

" startify options
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

" Fugitive options
" let g:fugitive_git_executable = 'LANG=ru_RU.UTF-8 git'
" let g:fugitive_bitbucket_domains = ['http://bitbucket.sberned.ru']
" let g:fugitive_browse_handlers =

" GitGutter options
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual

" isort options
" let g:vim_isort_map = ''
" let g:vim_isort_config_overrides = {
"   \ 'include_trailing_comma': 1, 'multi_line_output': 3}
" let g:vim_isort_python_version = 'python3'

" Neoformat options

" " Enable alignment
" let g:neoformat_basic_format_align = 1
" " Enable tab to spaces conversion
" let g:neoformat_basic_format_retab = 1
" " Enable trimmming of trailing whitespace
" let g:neoformat_basic_format_trim = 1

" let g:neoformat_enabled_python = ['docformatter', 'isort', 'black']

" let g:neoformat_run_all_formatters = 1

" let g:neoformat_only_msg_on_error = 1

" " run Neoformat on save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre * undojoin | Neoformat
" augroup END

" ALE options
" let g:ale_sign_error = '!'
" let g:ale_sign_warning = '?'

let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
" let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" let g:ale_linters = {'python': []}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort'],
\}
" nmap ]a <Plug>(ale_next_wrap)
" nmap [a <Plug>(ale_previous_wrap)


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
map s <Plug>(easymotion-bd-f)
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
set relativenumber number
nnoremap <F4> :set relativenumber!<CR>

" toggle NERDTree
map <leader>` :NERDTreeToggle<CR>
nnoremap <leader><leader>` :NERDTree .<CR>

" deoplete options
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_at_startup = 0
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#enable_smart_case = 1
" call deoplete#custom#option('sources', {
" \ '_': ['ale', 'jedi'],
" \})
" let g:deoplete#sources#jedi#server_timeout = 10
" let g:deoplete#sources#jedi#statement_length = 50
" let g:deoplete#sources#jedi#enable_cache = 1
" let g:deoplete#sources#jedi#show_docstring = 0
" complete with words from any opened file
" let g:context_filetype#same_filetypes = {}
" let g:context_filetype#same_filetypes._ = '_'
" TODO make jumping outside project directory work
" let g:deoplete#sources#jedi#extra_path =
" jedi options
" Disable autocompletion (using deoplete instead)
" let g:jedi#completions_enabled = 0
" Go to definition
" let g:jedi#goto_command = "<Leader>d"
" Find assignments
" let g:jedi#goto_assignments_command = "<Leader>a"
" let g:jedi#documentation_command = "K"
" Find ocurrences
" let g:jedi#usages_command = "<Leader>n"
" TODO couldn't make any other combination work
" let g:jedi#completions_command = "<C-N>"
" let g:jedi#rename_command = "<Leader>r"
" Semshi options
" let g:semshi#update_delay_factor = 0.0001
" Overwriting Semshi color highlights for better readability
" function MyCustomHighlights()
"     hi semshiUnresolved      ctermfg=226 guifg=#666600 cterm=underline gui=underline
" endfunction
" autocmd FileType python call MyCustomHighlights()

" coc.nvim options

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-TAB> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
