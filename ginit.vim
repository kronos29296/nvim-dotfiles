if has("win32") || has("win64)
  guifont Consolas:h11
  let GuiWindowFullscreen=1
  :call GuiWindowMaximized(1)
else
  guifont Inconsolata for Powerline:h11
  let GuiWindowMaximized=1
  :call GuiWindowMaximized(1)
