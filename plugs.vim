
"" Be iMproved with neovim
"" =======================

if has("win32") || has("win64")
  call plug#begin('$HOME\vimfiles\plugs')
else
  call plug#begin('$HOME/.nvim/plugs')
endif
"" ==================
"" Plugins start here
"" ==================

" ****************************************************************************

"" Airline and themes
"" ==================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'iCyMind/NeoSolarized'
Plug 'tomasr/molokai'
Plug 'rakr/vim-one'

" Plug 'altercation/vim-colors-solarized'
" Plug 'vim-scripts/CSApprox'
" Plug 'altercation/vim-colors-solarized'
" Plug 'w0ng/vim-hybrid'
" Plug 'frankier/neovim-colors-solarized-truecolor-only'

"" File management
"" ===============
" Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'

"" Search
"" ======
if has("unix")
  Plug 'junegunn/fzf.vim', { 'depends': 'fzf'}
  Plug 'junegunn/fzf', {'do': './install --bin' }
else
  Plug 'C:\ProgramData\chocolatey\lib\fzf\tools\fzf.exe' | Plug 'junegunn/fzf.vim'
endif
" Plug 'vim-scripts/grep.vim'

"" Formatting, Indent and eye-candy
"" ================================
" Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " dot repeat for plugin actions
" Plug 'vim-scripts/indentpython.vim'

"" Vim-Session
"" ===========
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
if has('unix')
  Plug 'Shougo/vimproc.vim', {'do': 'make'}
elseif has('win32')
  Plug 'Shougo/vimproc.vim', {'do': 'mingw32-make'}
endif

"" Autocomplete and syntax highlight
"" =================================

Plug 'w0rp/ale'
Plug 'wlangstroth/vim-racket', {'for': 'racket'}
" Plug 'Valloric/YouCompleteMe'
" Plug 'xu-cheng/brew.vim'

"" For Deoplete
"" ============
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi', { 'for' : 'python'}
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/echodoc.vim'
if has('unix')
  Plug 'zchee/deoplete-zsh', { 'for' : 'zsh'}
  Plug 'zchee/deoplete-clang', { 'for' : ['c','cpp']}
  Plug 'landaire/deoplete-d', { 'for' : 'd'}
endif

"" Snippets
"" ========
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"" Markdown, Pandoc, Latex
"" ===========================
if has('unix')
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax', {'for': ['pandoc','markdown']}
  Plug 'dhruvasagar/vim-table-mode', { 'for' : ['pandoc', 'markdown']}
  Plug 'lervag/vimtex', { 'for' : 'latex'}
endif

"" Python
"" ======
Plug 'Vimjas/vim-python-pep8-indent'

"" Haskell
"" =======
Plug 'dag/vim2hs', { 'for' : 'haskell'}
Plug 'pbrisbin/vim-syntax-shakespeare', { 'for' : 'haskell'}
Plug 'alx741/vim-hindent', { 'for' : 'haskell'}
Plug 'eagletmt/neco-ghc', { 'for' : 'haskell'}
Plug 'godlygeek/tabular', { 'for' : 'haskell'} " Prettify Haskell
" Plug 'eagletmt/ghcmod-vim', { 'for' : 'haskell'}

"" R
"" =
Plug 'jalvesaq/Nvim-R', { 'for' : 'r'}

"" D
"" =
" Plug 'idanarye/vim-dutyl', { 'for' : 'd'}

"" Unix utils
"" ==========
Plug 'alx741/vinfo'


"*****************************************************************************

call plug#end()
