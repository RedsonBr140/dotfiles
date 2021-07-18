" ███╗   ██╗███████╗ ██████╗   ██╗   ██╗██╗███╗   ███╗
" ████╗  ██║██╔════╝██╔═══██╗  ██║   ██║██║████╗ ████║
" ██╔██╗ ██║█████╗  ██║   ██║  ██║   ██║██║██╔████╔██║
" ██║╚██╗██║██╔══╝  ██║   ██║  ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║ ╚████║███████╗╚██████╔╝   ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝  ╚═══╝╚══════╝ ╚═════╝     ╚═══╝  ╚═╝╚═╝     ╚═╝

"------------------------------------------------------

call plug#begin('~/.vim/plugged')
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'morhetz/gruvbox'
    Plug 'mhinz/vim-startify'
	Plug 'jiangmiao/auto-pairs'
call plug#end()
"------------------------------------------------------
"
set clipboard=unnamedplus
syntax enable
set number
set encoding=UTF-8
colorscheme gruvbox
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set number relativenumber

" set airline theme
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:startify_files_number = 6

let g:startify_bookmarks = [
		\ '~/.config/sway/config',
		\ '~/.config/nvim/init.vim']
let g:startify_lists = [
		\ { 'type': 'bookmarks', 'header': ['   Bookmarks']},
		\ { 'type': 'files',     'header': ['   Recent Files']}]
let g:startify_custom_header = [
		\"   ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗ ",
		\"   ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║ ",
		\"   ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║ ",
		\"   ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║ ",
		\"   ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║ ",
		\"   ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝ "]
nnoremap <C-b> :NERDTreeToggle<CR>
