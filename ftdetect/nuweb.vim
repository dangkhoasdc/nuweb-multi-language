" nuweb signature files
augroup NuwebDetect
  autocmd!
  autocmd BufRead,BufNewFile *.nw setlocal filetype=nuweb
augroup END
