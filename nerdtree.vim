nmap <leader>nn :NERDTreeFind<CR>
nmap <leader>Ex :NERDTree<CR>
nmap <leader>nsb :bookmark<CR>
nmap <leader>nb B<CR>

let g:NERDTreeShowBookmarks=1 
let g:NERDTreeShowLineNumbers=1 
let g:NERDTreeShowHiddenFiles=1 
let g:NERDTreeShowBookmarks=1 
let NERDTreeIgnore = ['__pycache__', 'target', '__init__.py','.classpath','pom.xml']

autocmd FileType nerdtree setlocal relativenumber
"autocmd VimEnter * if !args() | NERDTree | endif
