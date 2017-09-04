
"" Be iMproved with neovim
"" =======================

call plug#begin('$HOME/.config/nvim/plugs')

"" ==================
"" Plugins start here
"" ==================

" ****************************************************************************

"" Airline and themes
"" ==================
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'iCyMind/NeoSolarized'
Plug 'chriskempson/base16-vim'

" Plug 'vim-scripts/CSApprox'
" Plug 'altercation/vim-colors-solarized'
" Plug 'w0ng/vim-hybrid'
" Plug 'rakr/vim-one'
" Plug 'frankier/neovim-colors-solarized-truecolor-only'

"" File management
"" ===============
" Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'

"" Search
"" ======
Plug 'junegunn/fzf.vim', { 'depends': 'fzf'}
Plug 'junegunn/fzf', {'do': './install --bin' }
" Plug 'vim-scripts/grep.vim'

"" Formatting, Indent and eye-candy
"" ================================
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular', { 'for' : 'haskell'}
  " Prettify Haskell
Plug 'Yggdroot/indentLine'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " dot repeat for plugin actions
" Plug 'vim-scripts/indentpython.vim'

"" Vim-Session
"" ===========
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'Shougo/vimproc.vim', {'do': 'make'}

"" Autocomplete and syntax highlight
"" =================================

Plug 'w0rp/ale'
Plug 'wlangstroth/vim-racket'
" Plug 'Valloric/YouCompleteMe'
" Plug 'xu-cheng/brew.vim'

"" For Deoplete
"" ============
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi', { 'for' : 'python'}
Plug 'zchee/deoplete-zsh', { 'for' : 'zsh'}
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/echodoc.vim'
Plug 'zchee/deoplete-clang', { 'for' : ['c','cpp']}
" Plug 'Shougo/denite.nvim'

"" Snippets
"" ========
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'ludwig/split-manpage.vim'

"" Markdown, Pandoc, Latex
"" ===========================
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'dhruvasagar/vim-table-mode', { 'for' : ['pandoc', 'markdown']}
Plug 'lervag/vimtex', { 'for' : 'latex'}

"" Python
"" ======
Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'hylang/vim-hy'

"" Haskell
"" =======
Plug 'dag/vim2hs', { 'for' : 'haskell'}
Plug 'pbrisbin/vim-syntax-shakespeare', { 'for' : 'haskell'}
Plug 'alx741/vim-hindent', { 'for' : 'haskell'}
Plug 'eagletmt/neco-ghc', { 'for' : 'haskell'}
" Plug 'eagletmt/ghcmod-vim', { 'for' : 'haskell'}

"" R
"" =
Plug 'jalvesaq/Nvim-R', { 'for' : 'r'}

"*****************************************************************************

call plug#end()
