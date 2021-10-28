colorscheme pablo
set hlsearch
set smartcase
set expandtab
set smartindent
set relativenumber
set number
set nowrap
set ruler
set noswapfile
" don't search vim's noisy swp files
set wildignore +=.swp
set belloff=all
syntax on
" rebind quit to quit all windows
" :cabbrev q qa
silent
set splitbelow
" if vim won't start, remove silent here, or delete the swap file
silent split ~/.vimtips.txt
resize 5


" vim plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fireplace' 
Plug 'preservim/nerdtree', { 'tag': '6.10.9', 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

nnoremap <C-p> :Files<Cr>

" set NERDTree to start
" autocmd VimEnter * NERDTree | wincmd p
