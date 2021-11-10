colorscheme pablo
set hlsearch
set smartcase
set tabstop=4
set shiftwidth=4
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
Plug 'dense-analysis/ale'
call plug#end()

nnoremap <C-p> :Files<Cr>

" set NERDTree to start
" autocmd VimEnter * NERDTree | wincmd p


" ALE language server client setups
let g:ale_linters = {
        \   'yaml': ['spectral'],
        \   'json': ['spectral'],
        \   'clojure': ['clj-kondo'],
        \   'vue': ['eslint', 'vls']
        \}

let g:ale_linter_aliases = {'vue' : ['vue', 'javascript' ] }

let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_json_spectral_use_global = 1
let g:ale_yaml_spectraL_use_global = 1
