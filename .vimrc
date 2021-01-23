" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'valloric/youcompleteme'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-fugitive'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


set nu	
set rnu
set showbreak=+++	
set textwidth=144
set colorcolumn=144
set showmatch	
set spell
set visualbell	
set hlsearch
set smartcase	
set ignorecase
set incsearch
set autoindent	
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set ruler	
set autochdir
set undolevels=1000	
set backspace=indent,eol,start	
set noswapfile
set splitbelow
set splitright
set nowrap

let mapleader=' '

""Keyboard Mappings
"General
nmap <leader>src :w <bar>:source %<CR>
nmap <leader>vn :vsp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

"Plugin keyboard Mappings
source ~/.vim/config/nerdtree
source ~/.vim/config/coc.rc
source ~/.vim/config/airline.rc
source ~/.vim/config/devicons.rc
source ~/.vim/config/fugitive.rc

"Plugin Configuration



"Functions For Auto Complete
"
fun! GoYcM()
    nnoremap <buffer><silent> <leader> cd :YcmCompleter GoTo<CR>
    nnoremap <buffer><silent> <leader> cr :YcmCompleter GoToReferences<CR>
    nnoremap <buffer><silent> <leader> cn :YcmCompleter RefactorRename<CR>
endfun
