"" This is neovim plugin file
"" Do not set the settings here

" Python path elsewhere cuz I use Anaconda
if has("unix")
  let g:python3_host_prog = "/usr/bin/python"
else
  let g:python3_host_prog = $SystemDrive/tools/Anaconda3/python.exe
endif

" source $HOME/.config/nvim/plugins.vim " No more dein
if has("win32")
  source $HOME\AppData\Local\nvim\plugs.vim
  source $HOME\AppData\Local\nvim\general.vim
  source $HOME\AppData\Local\nvim\keys.vim
  source $HOME\AppData\Local\nvim\plug_config.vim
  source $HOME\AppData\Local\nvim\file_type.vim
else
  source $HOME/.config/nvim/plugs.vim
  source $HOME/.config/nvim/general.vim
  source $HOME/.config/nvim/keys.vim
  source $HOME/.config/nvim/plug_config.vim
  source $HOME/.config/nvim/file_type.vim
endif

"" Custom functions
"" ================

command NF :set nofoldenable
nmap <leader>fq mygggqG`y
