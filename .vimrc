set encoding=utf-8
scriptencoding utf-8

augroup MyAutoCmd
    autocmd!
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
" Colorscheme
Plug 'cocopon/iceberg.vim'

" Language Server Protocol
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Async Autocompletion
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" fzf
"Plug '~/.fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"toml
Plug 'cespare/vim-toml'

" translate
Plug 'skanehira/translate.vim'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-lsp
" Diagnostics settings. " TODO Toggle diagnostics is better.
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_highlights_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
" Disable auto editing.
let g:lsp_text_edit_enabled = 0
let g:lsp_insert_text_enabled = 0
" TODO linter settings.
let g:lsp_settings = {
\  'pylsp-all': {
\    'workspace_config': {
\      'pylsp': {
\        'configurationSources': ['flake8'],
\        'plugins': {
\          'flake8': {'enabled': 1},
\          'mccade': {'enabled': 0},
\          'pycodestyle': {'enabled': 0},
\          'pyflakes': {'enabled': 0}
\        }
\      }
\    }
\  }
\}

" snippet
let g:UltiSnipsExpandTrigger = "<C-J>"
let g:UltiSnipsJumpForwardTrigger = "<C-L>"
let g:UltiSnipsJumpBackwardTrigger = "<C-K>"
" python
let g:ultisnips_python_style = 'google'
let g:ultisnips_python_quoting_style = 'single'
let g:ultisnips_python_triple_quoting_style = 'single'

" asyncomplete
" Delay popup. " TODO Manual complete is better.
let g:asyncomplete_popup_delay = 20

" fzf.vim
" Size of preview window and toggle command.
let g:fzf_preview_window = ['up:60%', 'ctrl-d']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mouse
"set mouse

" No Title.
set notitle

" Use ruler.
set ruler

" Unsaved buffers are allowed to be in background.
set hidden

" How many histories to be remenberd.
set history=1000
set undolevels=1000

" Try to figure out filetypes.
filetype indent on

" Enable syntax highlight.
syntax enable

" Status Line.
set showcmd
set laststatus=2

" Colorscheme.
set t_Co=256
colorscheme iceberg
set background=dark

" Disable backup. " TODO Backup is important.
set nobackup
" Disable undofile.
set noundofile
" Disable swapfile.
set noswapfile

" Don't redraw while executing macro.
set lazyredraw

" Octal numbers aren't incremented and decrimented.
set nrformats=bin,hex


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set wildmenu.
set wildmenu
set wildmode=list:longest
set wildchar=<TAB>

" Turn line wrapping off.
set nowrap

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" Add relative line number.
set number
set norelativenumber

" Configure <BS>, <CTRL-W>, <DEL>, <CTRL-U> act.
set backspace=eol,start,indent

" Show matching brakets.
set showmatch
set matchtime=2

" Default vsprit behaviour to right.
set splitright
" Default vsprit behaviour to below.
set splitbelow

" No sound bell.
set belloff=all

" Folding method.
set foldmethod=indent
set foldlevel=100

" Show whitespaces, tabs and extentions.
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set hlsearch
set incsearch
" Searches don't wrap around the end of the file.
set nowrapscan


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, Tab and Indent Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use whitespaces for indent.
set expandtab
" Insert indents acoording to shiftwidth.
set smarttab
" Set indent width.
set shiftwidth=4
set tabstop=4
" Copy indent from current line when starting a new line.
set autoindent

augroup MyAutoCmd
    autocmd Filetype python   setlocal sw=4 sts=4 ts=4 et
    autocmd Filetype markdown setlocal sw=2 sts=2 ts=2 et
    autocmd Filetype vim      setlocal sw=4 sts=4 ts=4 et
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set spacekey for learder key.
nnoremap <Space> <nop>
let mapleader = "\<SPACE>"

" Window movement.
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k

" Tab new.
nnoremap <Leader>wg :tabnew<CR>

" Turn off highlight.
nnoremap <silent> <Leader>h :noh<CR>

" Toggle wrap.
nnoremap <silent> <Leader>ww :set wrap!<CR>

" Jump back after search.
nnoremap * *N
nnoremap g* g*N

" Fail safe for mistype. " TODO Use better moving command!
" TODO Ctrl-J should not be remap?
nnoremap <C-K> 7<C-U>
nnoremap <C-J> 7<C-D>

" Move as it looks.
nnoremap j gj
nnoremap k gk
" Move linewise.
nnoremap gj j
nnoremap gk k

nnoremap ; :
nnoremap : ;

" Toggle number/relativenumber.
nnoremap <silent> <F1> :set number!<CR>
nnoremap <silent> <F2> :set relativenumber!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" iceberg
if exists("ToggleBackground") == 0
    function ToggleBackground()
        if &background == "dark"
            set background=light
        else
            set background=dark
        endif
    endfunction
endif
nnoremap <Leader>c :call ToggleBackground()<CR>
" vim-lsp
" Jump to definition.
nnoremap <silent> <C-]> :LspDefinition<CR>
" Get list of references.
nnoremap <Leader>ref :LspReferences<CR>
" Execute formatter.
nnoremap <Leader>format :LspDocumentFormat<CR>
" Get list of diagnostics.
nnoremap <Leader>e :LspDocumentDiagnostics<CR>

" asyncomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-p>" : "\<Tab>"

" vim-fugitive
" git diff.
nnoremap <Leader>gd :Gdiffsplit<CR>
" git add.
nnoremap <Leader>ga :Gwrite<CR>
" git commit.
"nnoremap <Leader>gc :Git commit<CR>

" fzf.vim
" Buffers.
nnoremap <Leader>b :Buffers<CR>
" Get files at current directory.
nnoremap <Leader>o :Files<CR>
" Get marks.
nnoremap <Leader>m :Marks<CR>
" Use ripgrep.
nnoremap <Leader>rg :Rg<Space>
" git ls-files --modified
nnoremap <Leader>gm :GFiles?<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup MyAutoCmd
    " 'cls' and 'self' are practically reserved words in python.
    autocmd VimEnter,Filetype python syntax keyword pythonReserved cls self
    autocmd VimEnter,Filetype python highlight link pythonReserved Function
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trial Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Improves smoothness of redrawing ?
set ttyfast

" Replace word under the cursor (repeatedly).
nnoremap <Leader>s :%s/<C-R><C-W>//gc<Left><Left><Left>
vnoremap <Leader>s :s///gc<Left><Left><Left><Left>

nnoremap <Leader>ff :set foldlevel=1<CR>
nnoremap <Leader>fk zm
nnoremap <Leader>fj zr
nnoremap <Leader>fz zR

" blowser with w3m
function! s:www(word) abort
    execute('vert term ++close ++shell w3m google.com/search\?q="' . a:word . '"')
endfunction
command! -nargs=1 WWW call s:www(<f-args>)
