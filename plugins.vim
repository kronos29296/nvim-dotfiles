
"" Be iMproved
"" ===========
if &compatible
  set nocompatible
endif

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
  call dein#add('frankier/neovim-colors-solarized-truecolor-only')
  call dein#add('rakr/vim-one')
  call dein#add('chriskempson/base16-vim')
  call dein#add('iCyMind/NeoSolarized')
  call dein#add('altercation/vim-colors-solarized')
"   call dein#add('w0ng/vim-hybrid')

"" File management
"" ===============
  call dein#add('scrooloose/nerdtree')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Raimondi/delimitMate')
  call dein#add('majutsushi/tagbar')
  call dein#add('sheerun/vim-polyglot')

"" Search
"" ======
  call dein#add('junegunn/fzf', { 'build': './install', 'merge': '0' })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf'})
  call dein#add('vim-scripts/grep.vim')
  call dein#add('vim-scripts/CSApprox')

"" Formatting, Indent and eye-candy
"" ================================
  call dein#add('tpope/vim-commentary')
  call dein#add('godlygeek/tabular') " Prettify Haskell
  call dein#add('Yggdroot/indentLine')
  call dein#add('bronson/vim-trailing-whitespace')
"  call dein#add('vim-scripts/indentpython.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('ervandew/supertab') " tab for auto complete
  call dein#add('tpope/vim-repeat') " dot repeat for plugin actions

"" Vim-Session
"" ===========
  call dein#add('xolox/vim-misc')
  call dein#add('xolox/vim-session')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})

"" Autocomplete and syntax highlight
"" =================================

"  call dein#add('Valloric/YouCompleteMe')
  call dein#add('w0rp/ale')
  call dein#add('xu-cheng/brew.vim')
  call dein#add('wlangstroth/vim-racket')

"" For Deoplete
"" ============
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('zchee/deoplete-zsh')
  " call dein#add('Shougo/neoinclude.vim')
  call dein#add('zchee/deoplete-clang')

"" Snippets
"" ========
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')

"  call dein#add('ludwig/split-manpage.vim')
"" Markdown, Pandoc, Latex
"" ===========================
  call dein#add('vim-pandoc/vim-pandoc')
  call dein#add('vim-pandoc/vim-pandoc-syntax')
  call dein#add('dhruvasagar/vim-table-mode')
  call dein#add('lervag/vimtex')

"" Python
"" ======
  call dein#add('raimon49/requirements.txt.vim', {'for': 'requirements'})
  call dein#add('Vimjas/vim-python-pep8-indent')
"   call dein#add('hylang/vim-hy')

"" Haskell
"" =======
  call dein#add('eagletmt/neco-ghc')
  call dein#add('dag/vim2hs')
  call dein#add('pbrisbin/vim-syntax-shakespeare')
  call dein#add('alx741/vim-hindent')
  call dein#add('eagletmt/ghcmod-vim')

"*****************************************************************************

  call dein#end()
  call dein#save_state()
endif
