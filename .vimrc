" VIMRC CONFIG

execute pathogen#infect()

" BASIC
set tabstop=4
set noexpandtab
syntax on
set number
set mouse=a
set wildmenu
filetype plugin indent on

" PLUGINS
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" THEMES
colorscheme onedark