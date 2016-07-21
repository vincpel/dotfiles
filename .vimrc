set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'valloric/youcompleteme'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'artur-shaik/vim-javacomplete2'
" color scheame
Plugin 'tpope/vim-vividchalk'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Power line
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

set laststatus=2

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

function OpenNERDTree()
  execute ":NERDTree"
endfunction
command -nargs=0 OpenNERDTree :call OpenNERDTree()

nmap <ESC>t :OpenNERDTree<CR>
map <C-n> :NERDTreeToggle<CR>

" vim-javacomplet2 conf stuff
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" :colorscheme vividchalk
"syntax enable
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
"colorscheme solarized8_dark
