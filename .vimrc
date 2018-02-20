" This is vim file for personal usage
"
" Some tutorials
" 1. https://github.com/spf13/spf13-vim
" 2. http://www.viemu.com/vi-vim-cheat-sheet.gif , cheatsheet

syntax on
set encoding=utf-8
set number

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/andrewy/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/andrewy/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
"NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'easymotion/vim-easymotion' " try ',,s' to search a char or ',,w' to show all those beginning of words, ',,b' to show previous words
NeoBundle 'mxw/vim-jsx'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'vim-scripts/taglist.vim'

" for python
NeoBundle 'klen/python-mode'

" max line lenght to 250
let g:pymode_options_max_line_length=250

" NeoBundle 'davidhalter/jedi-vim'

" Snippets support, utlisnips is engine, vim-snippets is snippets
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'epilande/vim-react-snippets'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<enter>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" You can specify revision/branch/tag.
" NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Famous YouCompleteMe
NeoBundle 'Valloric/YouCompleteMe'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

execute pathogen#infect()
call pathogen#helptags()

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



