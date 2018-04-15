" nuweb signature files
" Author: Dang-Khoa
" Email: letan.dangkhoa@gmail.com
"
augroup NuwebDetect
  autocmd!
  autocmd BufRead,BufNewFile *.nw,*.nuweb set filetype=nuweb
  autocmd BufRead,BufNewFile *.nw,*.nuweb setlocal commentstring=%\ %s
augroup END


