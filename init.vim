
" Default path for Cygwin 64-bit, change accordingly
set shell=C:\msys64\usr\bin\bash.exe

" Without --login, Cygwin won't mount some directories such as /usr/bin/
set shellcmdflag=-c

" Default value is (, but bash needs "
" Seem to work with msys2 and windows nvim-qt for !git
"  But the rest still fails
set shellxquote=(

" Paths will use / instead of \
set shellslash

" ensure MSYS2 binaries are available
let $PATH .= ';C:\msys64\bin'

execute 'source' fnamemodify(expand('<sfile>'), ':h').'/config/vimrc'
