if &compatible
	  set nocompatible
endif

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.vim') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインマネージャー
  call dein#add('Shougo/dein.vim')

  " 補完
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('cohama/lexima.vim')

  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}

set nowritebackup
set nobackup
set noswapfile

" from ~/.vimrc
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
set clipboard+=unnamedplus

" カッコを入力した時に対応した括弧をハイライトする
set showmatch matchtime=1
"自動的に閉じカッコを入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

" 三点リーダー(…) 星マーク(★) 矢印(→)などの表示の改善
set ambiwidth=double

" 行頭行末間移動(カーソルキー限定)
set whichwrap=b,s,<,>,[,]

" 色付けなど
filetype on
filetype plugin indent on
syntax on

" from vimrc end



" deopleteの設定
let g:deoplete#enable_at_startup = 1

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=niv
endif

" Please add below in your vimrc
call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'})
call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'tex'})

autocmd! BufRead *.tex :call jobstart('latexmk -pvc')
autocmd! BufNewFile *.tex 0r ~/.templates/tex.txt
autocmd! BufNewFile *.cpp 0r ~/.templates/cpp.txt
