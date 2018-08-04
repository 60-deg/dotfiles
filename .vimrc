set number
set cursorline

" 人権
set encoding=UTF-8

" マウスの有効化
set mouse=a

" 背景色
set background=light
"set termguicolors

" インクリメンタルサーチ・検索結果ハイライト
set ignorecase " 大文字と小文字を区別しない
set smartcase " 混在しているときに限り区別
set incsearch " nで次々検索結果を表示
set wrapscan " 下まで行ったら上に戻る
set hlsearch " ハイライト
nmap <Esc><Esc> :nohlsearch<CR><Esc> " Esc連打でハイライト解除

" バックアップ・スワップファイルの無効化
set nowritebackup
set nobackup
set noswapfile

" Tabに関する設定(ここでは4文字ソフトタブ)
set smarttab
set tabstop=4
set shiftwidth=4

" 自動インデント
set cindent

" クリップボードへヤンク
set clipboard+=unnamed,autoselect

" カッコを入力した時に対応した括弧をハイライトする
set showmatch matchtime=1
"自動的に閉じカッコを入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
call plug#begin('~/.vim/plugged')

" 三点リーダー(…) 星マーク(★) 矢印(→)などの表示の改善
set ambiwidth=double

" 行頭行末間移動(カーソルキー限定)
set whichwrap=b,s,<,>,[,]

Plug 'itchyny/lightline.vim'
Plug 'kadekillary/subtle_solo'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'nightsense/simplifysimplify'
Plug 'kadekillary/subtle_solo'
Plug 'archseer/colibri.vim'
Plug 'nightsense/seagrey'

call plug#end()

"colorscheme subtle_light
"colorscheme simplifysimplify-light
"colorscheme colibri
"colorscheme seagrey-light

" 色付けなど
filetype on
filetype plugin indent on
syntax on

