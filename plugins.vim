"=====================================
"  Deprecated because Dein freezes with
"  fzf installation dunno why.
"=======================================
" Dein commands for ease of use
" command Update :call dein#update()
" command Getlog :echo dein#get_updates_log()
" command Remove :call map(dein#check_clean(), "delete(v:val, 'rf')")
" command Install :call dein#install()
" command Clean :call dein#clear_state()
" if dein#check_install()
"   call dein#install()
" endif
"
" if len(dein#check_clean())
"   call map(dein#check_clean(), "delete(v:val, 'rf')")
" endif

"" Be iMproved
"" ===========
if &compatible
  set nocompatible
endif

"" Dein settings
"" =============
let g:dein#install_process_timeout=600
let g:dein#install_max_processes=2
let g:dein#install_log_filename='$HOME/.config/nvim/deins/install_log'

"" Dein plugin manager
set runtimepath+=$HOME/.config/nvim/deins/repos/github.com/Shougo/dein.vim

if dein#load_state('$HOME/.config/nvim/deins')

  call dein#begin('$HOME/.config/nvim/deins') " Plugin Directory

  call dein#add('$HOME/.config/nvim/deins/repos/github.com/Shougo/dein.vim') " Dein Location directory

"" ==================
"" Plugins start here
"" ==================

" ****************************************************************************

"" Airline and themes
"" ==================
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tomasr/molokai')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('iCyMind/NeoSolarized')
  " call dein#add('vim-scripts/CSApprox')
  " call dein#add('altercation/vim-colors-solarized')
  " call dein#add('w0ng/vim-hybrid')
  " call dein#add('rakr/vim-one')
  " call dein#add('chriskempson/base16-vim')
  " call dein#add('frankier/neovim-colors-solarized-truecolor-only')

"" File management
"" ===============
  " call dein#add('scrooloose/nerdtree', { 'on_cmd': ['NERDTreeFind','NERDTreeToggle']})
  " call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Raimondi/delimitMate')
  call dein#add('majutsushi/tagbar')
  call dein#add('sheerun/vim-polyglot')
  call dein#add('mbbill/undotree')

"" Search
"" ======
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf'})
  call dein#add('junegunn/fzf', { 'build': './install --all' })
  " call dein#add('vim-scripts/grep.vim')

"" Formatting, Indent and eye-candy
"" ================================
  call dein#add('tpope/vim-commentary')
  call dein#add('godlygeek/tabular', { 'on_ft' : 'haskell'})
  " Prettify Haskell
  call dein#add('Yggdroot/indentLine')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat') " dot repeat for plugin actions
 " call dein#add('vim-scripts/indentpython.vim')

"" Vim-Session
"" ===========
  call dein#add('xolox/vim-misc')
  call dein#add('xolox/vim-session')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})

"" Autocomplete and syntax highlight
"" =================================

  call dein#add('w0rp/ale')
  " call dein#add('Valloric/YouCompleteMe')
  " call dein#add('xu-cheng/brew.vim')
  " call dein#add('wlangstroth/vim-racket')

"" For Deoplete
"" ============
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi', { 'on_ft' : 'python'})
  call dein#add('zchee/deoplete-zsh', { 'on_ft' : 'zsh'})
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/echodoc.vim')
  " call dein#add('Shougo/denite.nvim')

  call dein#add('zchee/deoplete-clang', { 'on_ft' : ['c','cpp']})

"" Snippets
"" ========
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')

"  call dein#add('ludwig/split-manpage.vim')

"" Markdown, Pandoc, Latex
"" ===========================
  call dein#add('vim-pandoc/vim-pandoc')
  call dein#add('vim-pandoc/vim-pandoc-syntax')
  call dein#add('dhruvasagar/vim-table-mode', { 'on_ft' : ['pandoc', 'markdown']})
  call dein#add('lervag/vimtex', { 'on_ft' : 'latex'})

"" Python
"" ======
  call dein#add('Vimjas/vim-python-pep8-indent')
  " call dein#add('hylang/vim-hy')

"" Haskell
"" =======
  call dein#add('dag/vim2hs', { 'on_ft' : 'haskell'})
  call dein#add('pbrisbin/vim-syntax-shakespeare', { 'on_ft' : 'haskell'})
  call dein#add('alx741/vim-hindent', { 'on_ft' : 'haskell'})
  " call dein#add('eagletmt/ghcmod-vim', { 'on_ft' : 'haskell'})
  " call dein#add('eagletmt/neco-ghc', { 'on_ft' : 'haskell'})

"" R
"" =
  call dein#add('jalvesaq/Nvim-R', { 'on_ft' : 'r'})

"*****************************************************************************

  call dein#end()
  call dein#save_state()
endif
