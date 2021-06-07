
call plug#begin('~/.vim/plugged')
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'terroo/vim-auto-markdown'
call plug#end()
" Set's
set rtp+=~/.tabnine-vim 
set number

" Theme
set background=light
colorscheme solarized
set encoding=UTF-8

" set airline theme
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_exclude_preview = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#ale#enabled = 0

"Keys
nnoremap <C-b> :NERDTreeToggle<CR>
