if !get(g:, 'vimnuweb_enabled', 1)
    finish
endif

if !exists('g:vimnuweb_default_mappings')
    let g:vimnuweb_default_mappings = 1
endif


if !exists('g:vimnuweb_source_dir')
    let g:vimnuweb_source_dir = './'
endif

function! s:MapNotHasmapto(lhs, rhs)
    if !hasmapto('<Plug>' . a:rhs)
        execute 'nmap <buffer>' . a:lhs . ' <Plug>' . a:rhs
        execute 'vmap <buffer>' . a:lhs . ' <Plug>' . a:rhs
    endif
endfunction

function! s:BuildTeXFile()
    write
    execute "AsyncRun nuweb -l -o -r -d " . expand('%')
endfunction

function! s:BuildSourceFiles(pth)
    write
    execute "AsyncRun nuweb -t -p " . a:pth . " " . expand('%')
endfunction

autocmd FileType nuweb nnoremap <Plug>Nuweb_BuildTeXFile
            \ :call <sid>BuildTeXFile()<CR>
autocmd FileType nuweb nnoremap <Plug>Nuweb_BuildSourceFiles
            \ :call <sid>BuildSourceFiles(g:vimnuweb_source_dir)<cr>

if g:vimnuweb_default_mappings
    call <sid>MapNotHasmapto('<F9>', 'Nuweb_BuildTeXFile')
    call <sid>MapNotHasmapto('<F10>', 'Nuweb_BuildSourceFiles')
endif
