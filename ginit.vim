if has('win32') || has('win64')
  " Guifont Consolas:h11
  call GuiWindowMaximized(1)
  " let GuiWindowFullscreen=1
  " call rpcnotify(0, 'Gui', 'WindowMaximized', 1)
  " let g:python3_host_prog = $SystemDrive/tools/Anaconda3/python.exe
else
  Guifont Inconsolata for Powerline:h12
  call GuiWindowMaximized(1)
  " let GuiWindowMaximized=1
  " call rpcnotify(0, 'Gui', 'WindowMaximized', 1)
endif
