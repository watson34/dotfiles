" setting
set encoding=utf-8
"文字コードをUFT-8に設定
set fenc=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=list:longest
set wildchar=<TAB>

" バックアップファイルを作らない
set nobackup
set noundofile
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" ビープ音
set visualbell t_vb=


" 見た目系
colorscheme desert
" 行番号を表示
set number
set notitle
set showcmd
set ruler
set showmatch
set matchtime=1
set laststatus=2
set nowrap
" カーソル位置表示
"set ruler
" インデントはスマートインデント
set smartindent
set autoindent
" ビープ音を可視化
" set visualbell
" 括弧入力時の対応する括弧を表示
"set showmatch
" 対応括弧ハイライト時間 *0.1sec
set matchtime=1
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" ノーマルモードだけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;
scriptencoding utf-8 "これ入れないと下記が反映されない
augroup highlightZenkakuSpace "全角スペースを赤色にする
  autocmd!
  autocmd VimEnter,ColorScheme * highlight ZenkakuSpace term=underline ctermbg=Red guibg=Red
  autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
augroup END

" Tab系
" 不可視文字を可視化
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
set softtabstop=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

filetype plugin on
filetype indent on
autocmd Filetype python       setlocal sw=2 sts=2 ts=2 et
autocmd Filetype javascript   setlocal sw=2 sts=2 ts=2 et

" plugin
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=0
