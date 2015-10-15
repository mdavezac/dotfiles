" vundle files understood as vim
augroup vundle
    au!
    au BufNewFile,BufRead *.vundle setlocal filetype=vim
augroup END
