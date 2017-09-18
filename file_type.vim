

"" =========
"" Functions
"" =========
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wrapmargin=2
    set textwidth=80
  endfunction
endif

"" =======================
"" Autocmd rules for files
"" =======================

"" The PC is fast enough,
"" do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 &&
              \ line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END


" c
augroup cpp-settings
  " autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab formatprg=clang-format
  autocmd FileType c setlocal tabstop=4 shiftwidth=4
        \ expandtab formatprg=astyle\ -A1\ -p\ -xg\ -f\ -H\ -d
  autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab
augroup END

" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
        \ formatoptions+=croq softtabstop=4
        \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

augroup vimrc-vim
  autocmd FileType vim setlocal shiftwidth=2
augroup END

" haskell
augroup haskell-lang
  autocmd!
  autocmd FileType haskell setlocal expandtab shiftwidth=2
      \ nofoldenable softtabstop=2
augroup END
" autocmd Filetype haskell set formatprg=brittany
" autocmd Filetype haskell set ai
" autocmd Filetype haskell set expandtab
" autocmd Filetype haskell set tabstop=2
" autocmd Filetype haskell set shiftwidth=2
" autocmd FileType haskell set nofoldenable

"" txt
augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
  autocmd!
  autocmd FileType make setlocal noexpandtab
  autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

"" For Dlang
augroup dlang
  autocmd FileType d set efm=%*[^@]@%f\(%l\):\ %m,%f\(%l\\,%c\):\ %m,%f\(%l\):\ %m
  " autocmd Filetype d set colorcolumn=79
  autocmd Filetype d set softtabstop=2 shiftwidth=2
  autocmd FileType d set formatprg=dfmt\
        \--brace_style\ allman\ 2>\ /dev/null
augroup END
