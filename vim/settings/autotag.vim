" AutoTag
" Seems to have problems with some vim files
let g:autotagExcludeSuffixes="tml.xml.text.txt.vim"
augroup autotag
  au!
  autocmd BufWritePost,FileWritePost *.cc,*.c,*.cpp,*.h,*.hpp,*.py,*.jl call AutoTag ()
augroup END
