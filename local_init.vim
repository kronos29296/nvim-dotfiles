" Local config for nvim
" Set settings here and not init.vim
" ================================== Give them here

" Set vertical column 80
set colorcolumn=79

" Font and size
set gfn=Inconsolata\ 11

" For true color solarized
" ++++++++++++++++++++++++
set termguicolors
" set background=dark " or light
colorscheme one
set t_Co=16
let g:solarized_termcolors=16
" set t_Co=256                        " force vim to use 256 colors
" let g:solarized_termcolors=256      " use solarized 256 fallback

" Current theme
let g:airline_theme = 'base16'
" colorscheme base16-default-dark

" To toggle background
" map <F6> :let &background = ( &background == "dark"? "light" : "dark" )<Enter>

" jedi vim force to use python 3
" ++++++++++++++++++++++++++++++
" let g:jedi#force_py_version = 3

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

" snippets from ultisnips
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

" Clang deoplete options
let g:deoplete#sources#clang#libclang_path="/usr/lib/llvm-4.0/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/lib/llvm-4.0/lib/clang/4.0.0/include"

" Paste toggle for indent or non-indent auto while pasting
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" set pastetoggle=<F5>

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
noremap <leader>zw :Windows<Enter>
noremap <leader>zh :History
noremap <leader>zo :Colors<Enter>
noremap <leader>zs :Snippets<Enter>
noremap <leader>zc :Commands<Enter>
noremap <leader>zl :Locate<Space>
noremap <leader>zt :Tags<Space>
noremap <leader>za :AirlineTheme<Space>
" ++++++++++++++++ End bindings

" Remap Function keys for use in byobu (as it uses F1 to F9)
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
noremap <leader>nt :NERDTreeToggle<CR>
nmap <silent> <leader>tb :TagbarToggle<CR>

" Table mode bindings
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
" let g:table_mode_corner='|'

" Map bindings for terminal buffer
tnoremap <C-x> <C-\><C-n>

" Ultisnips keybindings
" +++++++++++++++++++++
let g:UltiSnipsExpandTrigger="<C-Space>"
" let g:UltiSnipsJumpForwardTrigger="<Tab>"
" let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
let g:UltiSnipsEditSplit="vertical"

" Syntastic bindings
" noremap <leader>le :Errors<CR>
" noremap <leader>lc :lclose<CR>

" Ale bindings to navigate errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <leader>ll <Plug>(ale_lint)

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
            \    'python': ['flake8','pylint'],
            \    'racket': ['code-ayatollah']
            \}
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_linter_aliases = {'pandoc': 'markdown'}

" Syntastic checker for racket
let g:syntastic_racket_code_ayatollah_script = "~/.config/nvim/code-ayatollah.rkt"
" let g:syntastic_loc_list_height=5

" Syntastic checker for Haskell and other options
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
" let g:syntastic_haskell_checkers = ['hlint', 'ghc_mod']

autocmd FileType haskell set nofoldenable

" Ignore globals in saved sessions
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
:let g:session_persist_colors = 0

"" Tabularize for haskell
let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

"" Haskell indent settings
let g:hindent_on_save = 1
let g:hindent_line_length = 79
let g:hindent_indent_size = 2
