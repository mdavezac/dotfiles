" AutoTag
" Seems to have problems with some vim files
let g:autotagExcludeSuffixes="tml.xml.text.txt.vim"
function AutoTagButNotAll()
  let path = expand('%:p')
  if path !~ "^fugitive:\/\/"
    call AutoTag()
  endif
endfunction
augroup autotag
  au!
  autocmd BufWritePost,FileWritePost *.h,*.hpp,*.cc,*.cpp,*.c,*.f,*.f90,*.jl call AutoTagButNotAll()
augroup END
