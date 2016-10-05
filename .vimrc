"-----------------------
"基本的な設定
"-----------------------
"シンタックスハイライトオン
syntax on

"エンコード
set encoding=utf8

"ファイルエンコード
set fileencoding=utf-8

"undofileが作成されないようにする
set noundofile

"新しい行のインデントを現在行と同じにする
set autoindent

"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/vimbackup

"クリップボードを有効とする
set clipboard=unnamed

"スワップファイル用のディレクトリを指定する
set directory=$HOME/vimbackup

"タブの代わりに空白文字を指定する
set expandtab

"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

"インクリメンタルサーチを行う
set incsearch

"行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

"新しい行を作った時には高速な自動インデントを行う
set smarttab

set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅

" NeoBundle用の設定、以下を追記
set nocompatible
filetype plugin indent off

if has('vim_starting')
        set runtimepath+=~/.vim/bundle/neobundle.vim
        call neobundle#begin(expand('~/.vim/bundle'))
endif 

NeoBundleFetch 'Shougo/neobundle.vim'

" 以下は必要に応じて追加
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomasr/molokai'
" Rubyのための設定
NeoBundle 'vim-ruby/vim-ruby'
" Slimのための設定
NeoBundle 'slim-template/vim-slim.git'
" CoffeeScriptのための設定
NeoBundle 'kchmck/vim-coffee-script'
" Markdown Preview
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
call neobundle#end()
"背景色
colorscheme molokai
filetype plugin indent on

NeoBundleCheck

" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

" NERDTreeのショートカット"
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" 入力モードからコマンドモードへのショートカット" 
inoremap <silent> jj <ESC>
" tn 次のタブ
map <silent> tn :tabnext<CR>
" tp 前のタブ
map <silent> tp :tabprevious<CR>
