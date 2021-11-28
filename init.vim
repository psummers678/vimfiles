" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'vim-test/vim-test'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
call plug#end()

set nospell
set nu	
set rnu
set showbreak=+++	
set textwidth=144
set colorcolumn=144
set showmatch	
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
nmap <leader>src :w <bar>:source ~/.vim/config/init.vim<CR>
nmap <leader>vn :vsp<CR>
nmap <leader>hn :sp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

"Plugin keyboard Mappings
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/airline.vim
source ~/.vim/config/devicons.vim
source ~/.vim/config/fugitive.vim
"source ~/.vim/config/coc.vim
source ~/.vim/config/fzf.vim
source ~/.vim/config/vim-test.vim
source ~/.vim/config/vim-rooter.vim
source ~/.vim/config/vim-go.vim
source ~/.vim/config/ultisnips.vim
