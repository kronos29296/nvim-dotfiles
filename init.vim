"" This is neovim plugin file
"" Do not set the settings here

" Python path elsewhere cuz I use Anaconda
let g:python3_host_prog = "/usr/bin/python"

" source $HOME/.config/nvim/plugins.vim " No more dein
source $HOME/.config/nvim/plugs.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/plug_config.vim
source $HOME/.config/nvim/file_type.vim

"" Custom functions
"" ================

command NF :set nofoldenable
nmap <leader>fq mygggqG`y
