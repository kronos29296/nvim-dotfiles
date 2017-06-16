
"" ===============
"" Plugin settings
"" ===============

"" Deoplete
"" ========

let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" let g:deoplete#disable_auto_complete = 1
"" To close preview window on insert
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" snippets from ultisnips
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

" Clang deoplete options
let g:deoplete#sources#clang#libclang_path="/usr/lib/llvm-4.0/lib/libclang.so"
let g:deoplete#sources#clang#clang_header="/usr/lib/llvm-4.0/lib/clang/4.0.0/include"

"" Ultisnips
"" =========
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<C-Space>"
" Conflicting Shortcuts disabled use Supertab
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"" Vim polyglot
"" ============
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1

"" IndentLine
"" ==========
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"" CSApprox plugin
"" ===============
let g:CSApprox_loaded = 1

"" session management
"" ==================
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" Ignore globals in saved sessions
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
:let g:session_persist_colors = 0

"" vim airline
"" ===========
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#virtualenv#enabled = 1

let g:airline_theme = 'base16'

"" Airline UTF-8 symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


"" NERDTree configuration
"" ======================
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50

"" grep.vim
"" ========
let Grep_Default_Options = '-IR'
let Grep_Skip_Files = '*.log *.db'
let Grep_Skip_Dirs = '.git node_modules'

"" fzf.vim
" let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
" if executable('rg')
  " let $FZF_DEFAULT_COMMAND = 'rg --files --no-messages --hidden --follow --glob "!.git/*"'
  " set grepprg=rg\ --vimgrep
  " command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
" endif

"" Tabularize for haskell
"" ======================
let g:haskell_tabular = 1

"" Haskell indent settings
"" =======================
let g:hindent_on_save = 1
let g:hindent_line_length = 79
let g:hindent_indent_size = 2

"" Tagbar
"" ======
let g:tagbar_autofocus = 1

"" Ale linter
"" ==========

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
            \    'python': ['flake8','pylint'],
            \}
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_linter_aliases = {'pandoc': 'markdown'}

"" Table mode bindings
"" ===================
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
