set nocompatible            " required
filetype off                " required
filetype plugin indent on   " required
syntax on

" Auto reload vimrc
autocmd! bufwritepost .vimrc source ~/.vimrc

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/.vim/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'tarmack/vim-python-ftplugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required

set nofoldenable        " don't fold by default
set foldmethod=indent   " fold by indent
set encoding=utf-8	    " Set UTF-8 encoding
set nu  			    " Line number
set tw=79          		" line with
set laststatus=2    	" status bar
set nowrap  		    " don't automatically wrap on load
set fo-=t          		" don't automatically wrap text when typing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set hlsearch		" highlight search
set incsearch
set nobackup
set nowritebackup
set noswapfile
set hidden

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
nnoremap <space> za

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

vnoremap <space> zf
" sort function
vnoremap <Leader>s :sort<CR>

" easier formatting of paragraphs
vmap Q gq
nmap Q gqap

" navigate between tabs
let mapleader = ","
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" jedi-vim
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#show_call_signatures = "1"

" Highlight bad whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color scheme
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme solarized
