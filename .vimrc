set encoding=utf-8
scriptencoding utf-8

augroup MyAutoCmd
    autocmd!
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-slp
"let g:lsp_diagnostics_enabled = 0

" fzf.vim
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" Disable undofile. " TODO ignore undofile option ?
set noundofile
" Disable swapfile.
set noswapfile

" Don't redraw while executing macro.
set lazyredraw


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
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
set relativenumber

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
    autocmd Filetype python   setlocal sw=2 sts=2 ts=2 et
    autocmd Filetype markdown setlocal sw=2 sts=2 ts=2 et
    autocmd Filetype vim      setlocal sw=4 sts=4 ts=4 et
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" US Keyboard.
nnoremap ; :
nnoremap : ;

" Toggle number/relativenumber.
nnoremap <F1> :set number!<CR>
nnoremap <F2> :set relativenumber!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set spacekey for learder key.
nnoremap <space> <nop>
let mapleader = "\<SPACE>"

" Buffers.
nnoremap <leader>b :Buffers<CR>

" Window movement.
nnoremap <leader>wh <C-W>h
nnoremap <leader>wl <C-W>l
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k

" Tab new.
nnoremap <leader>wg :tabnew<CR>

" Turn off highlight.
nnoremap <leader>h :nohlsearch<CR>

" fzf.vim
nnoremap <Leader>r :Rg<Space>
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

