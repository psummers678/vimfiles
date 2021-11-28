"https://github.com/fatih/vim-go-tutorial#run-it
"Tutorial for Go commands
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let g:go_fmt_command = "goimports"
set autowrite "To autosave before build
nmap <silent> gr :GoRun % <CR>
nmap <silent> gb :GoBuild <CR>
nmap <silent> gi :GoInstall
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>



autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>i  <Plug>(go-install)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
