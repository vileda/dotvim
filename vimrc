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

Plug 'klen/python-mode'

Plug 'Valloric/YouCompleteMe'

Plug 'wting/rust.vim'

Plug 'jeaye/color_coded'

Plug 'altercation/vim-colors-solarized'

Plug 'scrooloose/syntastic'

Plug 'phildawes/racer'

Plug 'mbbill/undotree'

Plug 'vim-ruby/vim-ruby'

Plug 'tpope/vim-rails'

Plug 'bling/vim-airline'

Plug 'kien/ctrlp.vim'

Plug 'majutsushi/tagbar'

Plug 'chrisbra/csv.vim'

Plug 'jonathanfilip/vim-lucius'

Plug 'ntpeters/vim-better-whitespace'

Plug 'sirtaj/vim-openscad'

Plug 'def-lkb/ocp-indent-vim'

Plug 'atweiden/merlin.vim'

Plug 'def-lkb/vimbufsync'

call plug#end()

" Plugin configuration

nmap <F2> :NERDTreeToggle<cr>
syntax on

set background=dark
colorscheme solarized

set guifont=Terminus\ 13

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

let vimDir = '$HOME/.vim'

let g:racer_cmd = expand(vimDir."/plugged/racer/target/release/racer")
let $RUST_SRC_PATH = expand(vimDir."/plugged/racer/src/")

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

nnoremap <F5> :UndotreeToggle<cr>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Put plugins and dictionaries in this dir (also on Windows)
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
set laststatus=2
set backspace=indent,eol,start
set mouse=a
set number
