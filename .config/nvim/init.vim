" Plugins
call plug#begin()
  Plug 'dylanaraps/wal.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'preservim/nerdtree'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

" Settings
colorscheme wal
syntax enable
set number
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set showmatch
filetype plugin indent on


" Mappings
map <SPACE> <leader>
nnoremap j gj
nnoremap k gk
nnoremap U <C-R>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>z :wq<cr>
nnoremap <esc> :noh<return><esc>

" Nerd Tree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = 'NerdTree'
let g:plug_window = 'noautocmd vertical topleft new'
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <leader>t :NERDTreeToggle<CR>

" Airline Bar
let g:airline_powerline_fonts = 1
