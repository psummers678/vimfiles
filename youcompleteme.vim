

"Functions For Auto Complete
"
fun! GoYcM()
    nnoremap <buffer><silent> <leader> cd :YcmCompleter GoTo<CR>
    nnoremap <buffer><silent> <leader> cr :YcmCompleter GoToReferences<CR>
    nnoremap <buffer><silent> <leader> cn :YcmCompleter RefactorRename<CR>
endfun
