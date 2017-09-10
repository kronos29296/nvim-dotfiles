
"" ===========================
"" General Settings for Neovim
"" ===========================

"" Required
filetype plugin indent on

"" ======================
"" Start General settings
"" ======================
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set fileformat=unix

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab
set smartindent

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Enable persistent undo
set undofile
if has("win32") || has("win64")
  set undodir=$HOME\AppData\Local\nvim\undo
else
  set undodir=$HOME/.nvim/undo
endif

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

set fileformats=unix,dos,mac
set showcmd

if exists('$SHELL')
  set shell=$SHELL
else
  set shell=/bin/sh
endif
if has("win32") || has("win64")
  set shell=cmd
endif


"" ===============
"" Visual Settings
"" ===============
syntax on
set ruler
set number
set relativenumber
" set ch=2
set noshowmode

"" For mouse support
set mouse=a
set mousemodel=popup

"" Theme and font
set guioptions=egmrti " Gui window options
" set gfn=Monospace\ 10
set colorcolumn=79
if has("win32") || has("win64")
  set gfn="Consolas"\ 11
else
  set gfn="Inconsolata"\ 11
endif

set termguicolors
set background=dark " or light

"" Disable the blinking cursor and center cursor on screen
" set gcr=a:blinkon0
set guicursor=
set scrolloff=5

"" Status bar
" set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

"" Title (restore title on exit)
set title
set titleold="Terminal"
set titlestring=%F

"" Status line
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"" For search ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
set wildmode=list:longest,list:full

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard+=unnamed,unnamedplus
  " set clipboard+=unnamed
endif

"" Auto read changed files (not periodic)
set autoread

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
