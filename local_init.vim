" Local config for nvim
" Set settings here and not init.vim
" ================================== Give them here

" For true color solarized
" ++++++++++++++++++++++++
set termguicolors
set background=dark " or light
colorscheme solarized

" To toggle background
map <F6> :let &background = ( &background == "dark"? "light" : "dark" )<Enter>

" jedi vim force to use python 3
" ++++++++++++++++++++++++++++++
let g:jedi#force_py_version = 3

" +++++++++++++++++++++++++++++++++++++++++++
" Use deoplete. and rest of deoplete configs
" ++++++++++++++++++++++++++++++++++++++++++
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
" " To close preview window on insert
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" omnifuncs "dunno what that is
augroup omnifuncs
  autocmd!
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
augroup end

" Paste toggle for indent or non-indent auto while pasting
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set pastetoggle=<F5>

" Shortcuts to insert new line in normal mode
" +++++++++++++++++++++++++++++++++++++++++++
nmap oo o<Esc>k
nmap OO O<Esc>j

" Set relative numbers
set relativenumber

"" FZF keybinding
" ++++++++++++++
" to execute fzf for normal
noremap <leader>zz :FZF<Space>
noremap <leader>zf :Files<Enter>
noremap <leader>zb :Buffers<Enter>
noremap <leader>zw :Windows<Enter>
noremap <leader>zh :History
noremap <leader>zo :Colors<Enter>
noremap <leader>zs :Snippets<Enter>
noremap <leader>zc :Commands<Enter>
noremap <leader>zl :Locate<Space>
noremap <leader>zt :Tags<Space>
" ++++++++++++++++ End bindings
