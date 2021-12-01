" - Avoid using standard Vim directory names like 'plugin'
   let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
nmap <leader>src :w <bar>:source /home/psummers/vimfiles/init.vim<CR>
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
source /home/psummers/vimfiles/nerdtree.vim
source /home/psummers/vimfiles/airline.vim
source /home/psummers/vimfiles/devicons.vim
source /home/psummers/vimfiles/fugitive.vim
"source /home/psummers/vimfiles/coc.vim
source /home/psummers/vimfiles/fzf.vim
source /home/psummers/vimfiles/vim-test.vim
source /home/psummers/vimfiles/vim-rooter.vim
source /home/psummers/vimfiles/vim-go.vim
source /home/psummers/vimfiles/ultisnips.vim
