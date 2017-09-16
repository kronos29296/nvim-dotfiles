
"" ===============
"" Plugin settings
"" ===============

"" Color theme
" colorscheme base16-3024,solarized dark,onedark
colorscheme base16-onedark
let g:airline_theme = 'onedark'

"" Deoplete
"" ========

let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" let g:deoplete#disable_auto_complete = 1
"" To close preview window on insert
"InsertLeave
autocmd CompleteDone * if pumvisible() == 0 | pclose | endif

" snippets from ultisnips
call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

" Clang deoplete options
if has("unix")
  let g:deoplete#sources#clang#libclang_path="/usr/lib/libclang.so"
  let g:deoplete#sources#clang#clang_header="/usr/lib/clang/"
endif

" Deoplete for Lua - xolox plugin
" let g:lua_check_syntax = 0
" let g:lua_complete_omni = 1
" let g:lua_complete_dynamic = 0
" let g:lua_define_completion_mappings = 0

" let g:deoplete#omni#functions = {'lua' : 'xolox#lua#omnifunc' }
" let g:deoplete#omni#functions = { 'lua' : 'xolox#lua#completefunc' }

"" Vim-dutyl for dlang
"" ===================
" let g:dutyl_stdImportPaths=['/usr/include/dlang/dmd']

"" vim-pandoc fold
let g:pandoc#folding#level=1
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
" let g:pandoc#modules#disabled = ["folding"]

"" Ultisnips
"" =========
" let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<C-Space>"
"
" Conflicting Shortcuts disabled use Supertab
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

"" Vim polyglot
"" ============
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let g:python_highlight_all = 1

"" IndentLine
"" ==========
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"" CSApprox plugin
"" ===============
" let g:CSApprox_loaded = 1

"" session management
"" ==================
if has("unix")
  let g:session_directory='~/.nvim/session'
endif

let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" Ignore globals in saved sessions
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds
let g:session_persist_colors = 0

"" vim airline
"" ===========
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline#extensions#virtualenv#enabled = 1


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
" let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path
"             \ 'node_modules/**' -prune -o -path 'target/**' -prune -o -path
"             \ 'dist/**' -prune -o  -type f -print -o -type l -print
"             \ 2> /dev/null"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number
              \ --no-heading --fixed-strings --ignore-case --hidden --follow
              \ --glob "!.git/*" --color "always" '.shellescape(<q-args>).'|
              \ tr -d "\017"', 1, <bang>0)
endif

" ripgrep
" if executable('rg')
"   let $FZF_DEFAULT_COMMAND = 'rg --files --no-messages --hidden
"               \ --follow --glob "!.git/*"'
"   set grepprg=rg\ --vimgrep
"   command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number
"               \ --no-heading --fixed-strings --ignore-case --hidden --follow
"               \ --glob "!.git/*" --color "always" '.shellescape(<q-args>).'|
"               \ tr -d "\017"', 1, <bang>0)
" endif

"" Tabularize for haskell
"" ======================
let g:haskell_tabular = 1

"" Haskell indent settings
"" =======================
let g:hindent_on_save = 1
let g:hindent_line_length = 80
let g:hindent_indent_size = 2

"" Tagbar
"" ======
let g:tagbar_autofocus = 1
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

"" Ale linter
"" ==========

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_linters = {
          \'python': ['flake8','pylint'],
          \'haskell': ['ghc-mod','hlint'],
          \'vim': ['vint'],
          \'r': ['lintr'],
          \'text': ['proselint','vale']}
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_linter_aliases = {'pandoc': 'markdown'}
let g:ale_fixers = {
            \'python': ['autopep8']}
let g:ale_python_autopep8_options = '-aa'

"" Table mode bindings
"" ===================
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='
let g:table_mode_align_char=':'
" let g:table_mode_auto_align = 0

"" Echodoc - SHougo
let g:echodoc#enable_at_startup=1

"" Undotree
"" ========
let g:undotree_SetFocusWhenToggle=1
