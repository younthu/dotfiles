" This is vim file for personal(zhiyong) use
"
" Some tutorials
" 1. https://github.com/spf13/spf13-vim
" 2. http://www.viemu.com/vi-vim-cheat-sheet.gif , cheatsheet
" 3. http://feihu.me/blog/2014/intro-to-vim/ , introduction to many famous
" plugin in chinese, with gif

syntax on
set encoding=utf-8
set number


" Dsiplay incomplete commands
set showcmd

" Show the cursor position all the time
set ruler

" Highlight current line, current column
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Always show status line
set laststatus=2

" Highlight searches
set hlsearch

" Show 'invisible' characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Ignore case of searches
set ignorecase

" Show the filename in the window titlebar
set title

" Change <Leader> key to ','
let mapleader = ","


" Save buffer with <Leader> + S. note: Ctrl + S will suspend the terminal,
" Command key not work as well, https://stackoverflow.com/questions/33060569/mapping-command-s-to-w-in-vim
" never try to map Ctrl + S as :w
" there is a tutorial about vim key mapping, https://www.jianshu.com/p/2c9a85277d49
" Another one with detailed usage explain, http://blog.csdn.net/jasonding1354/article/details/45372007
:map <Leader>s :w<CR>
