syntax on
map <F5> :w <CR> :!g++ %; ./a.out <CR>
nmap <C-H> :noh <CR>
" sprawdza czy edytowany plik nie ulegl zmianie i go aktualizuje
map <F6> :checkt <CR>
set backspace=indent,eol,start
set autoindent
set incsearch
set hlsearch
set number
set mouse=a
set nocompatible
set background=dark
set wildmenu
set ruler
runtime ftplugin/man.vim
set ignorecase
set hidden
set autoread<
"->>>>>>>>>>>>>> zmienne do zawijania textu formatowania itd

"set linebreak
"set showbreak=>>
"set tw=0 columns=100
"set wm=0
"set formatoptions+=t

augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

let mapleader=','
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

execute pathogen#infect()
