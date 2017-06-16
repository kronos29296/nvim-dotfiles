
"" =======================
"" Key bindings for Neovim
"" =======================

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" To toggle background
" map <F6> :let &background = ( &background == "dark"? "light" : "dark" )<Enter>

" Paste toggle for indent or non-indent auto while pasting
" set pastetoggle=<F5>

" Tagbar
" nmap <silent> <F4> :TagbarToggle<CR>
"
" Remap Function keys for use in byobu (as it uses F1 to F9)
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
noremap <leader>nt :NERDTreeToggle<CR>
nmap <silent> <leader>tb :TagbarToggle<CR>

"" Nerd Tree Bindings
"" ==================
" nnoremap <silent> <F2> :NERDTreeFind<CR>
" noremap <F3> :NERDTreeToggle<CR>

"" Shortcuts to insert new line in normal mode
nmap oo o<Esc>k
nmap OO O<Esc>j

"" Ale bindings to navigate errors
"" ===============================
nmap <silent> <s-k> <Plug>(ale_previous_wrap)
nmap <silent> <s-j> <Plug>(ale_next_wrap)
nmap <silent> <leader>ll <Plug>(ale_lint)

" terminal emulation
nnoremap <silent> <leader>sh :terminal<CR>
"
" Map bindings for terminal buffer
tnoremap <C-x> <C-\><C-n>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

"" session management
"" ==================
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Buffer nav
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Clean search (highlight)
nnoremap <silent> <leader><space> :noh<cr>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"" Easy clipboard cut, copy, paste
noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"" FZF shortcuts
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>e :FZF -m<CR>
nnoremap <c-p> :FZF<cr>

noremap <leader>zz :FZF<Space>
noremap <leader>zw :Windows<Enter>
noremap <leader>zh :History
noremap <leader>zo :Colors<Enter>
noremap <leader>zs :Snippets<Enter>
noremap <leader>zc :Commands<Enter>
noremap <leader>zl :Locate<Space>
noremap <leader>zt :Tags<Space>
noremap <leader>za :AirlineTheme<Space>

"" Prettify Haskell using tabularize
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>