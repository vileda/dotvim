call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'fatih/vim-go'

Plug 'Valloric/YouCompleteMe'

Plug 'wting/rust.vim'

Plug 'jeaye/color_coded'

Plug 'altercation/vim-colors-solarized'

Plug 'scrooloose/syntastic'

Plug 'phildawes/racer'

Plug 'mbbill/undotree'

call plug#end()

nmap <F2> :NERDTreeToggle<cr>
syntax on
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

set guifont=Terminus\ 13

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

let g:racer_cmd = "/home/vileda/.vim/plugged/racer/target/release/racer"
let $RUST_SRC_PATH="/home/vileda/.vim/plugged/racer/src/"

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

nnoremap <F5> :UndotreeToggle<cr>

if has("persistent_undo")
	set undodir='~/.vim/undodir/'
	set undofile
endif
