" Global
set number
set autoindent
set encoding=utf-8
syntax on
setlocal shiftwidth=4
setlocal tabstop=4
setlocal noexpandtab
:set mouse=a

call plug#begin()

" Shorthand notation; fetches https://github.com/preservim/nerdtree
Plug 'ap/vim-css-color'					" CSS Color Preview
Plug 'dart-lang/dart-vim-plugin'		" Dart Lang
Plug 'neoclide/coc.nvim'				" Auto completion
Plug 'preservim/nerdtree'				" NerdTree
Plug 'preservim/tagbar'					" Tagbar for code navigation
Plug 'rafi/awesome-vim-colorschemes'	" Vim color Schemes
Plug 'ryanoasis/vim-devicons'			" Developer Icons
Plug 'vim-airline/vim-airline'			" Status Bar
Plug 'vim-airline/vim-airline-themes'	" Airline Themes
Plug 'tc50cal/vim-terminal'				" Vim Terminal
Plug 'tpope/vim-commentary'				" For Commenting gcc & gc

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>  " CTRL + f
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR> " CTRL + t

nmap <F4> :TagbarToggle<CR>

set completeopt-=preview " For No Previews

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Avoid startup warning
let g:coc_disable_startup_warning = 1

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-flutter
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line-themes
" let g:airline_theme='alduin'

" Autocompletion using Tab
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" These files, 2 spaces
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab
autocmd Filetype dart setlocal ts=2 sw=2 expandtab
