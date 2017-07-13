"" This is neovim plugin file
"" Do not set the settings here

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/plug_config.vim
source $HOME/.config/nvim/file_type.vim

"" Custom functions
"" ================
command Update :call dein#update()
command Getlog :call dein#get_updates_log()
command Remove :call map(dein#check_clean(), "delete(v:val, 'rf')")
command Install :call dein#install()
command Clean :call dein#clear_state()
command NF :set nofoldenable

" if dein#check_install()
"   call dein#install()
" endif
"
" if len(dein#check_clean())
"   call map(dein#check_clean(), "delete(v:val, 'rf')")
" endif
