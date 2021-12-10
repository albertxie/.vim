" -------------------------------------
" General Settings
" -------------------------------------
syntax on
set encoding=utf-8
set spelllang=en_us
set expandtab
set tabstop=2
set colorcolumn=119
set listchars=tab:▸…,eol:¬,trail:•
set list
set mouse=a
set backspace=indent,eol,start
set ruler
set number
set title
set ignorecase
set smartcase
set incsearch
set showmatch
set autoindent
set hlsearch
set nowrap
set cursorline
set confirm
set noswapfile


" -------------------------------------
" Key Mapping
" -------------------------------------
let mapleader = " "
inoremap jkl <esc>
nnoremap <leader>w :w! <CR>
nnoremap <leader>q :q! <CR>
nnoremap <leader>t :tabnew <CR>
nnoremap <leader><Space> :let @/="" <CR>
nnoremap <leader>s :set spell! <CR>
nnoremap <silent><C-t> :terminal <CR>
nnoremap Q <nop> "disable visual mode


" -------------------------------------
" Clipboard Management
" -------------------------------------
set clipboard=unnamed
"Copy current relative file path to buffer"
nmap cp :let @* = expand("%")<CR>


" -------------------------------------
" Colors
" -------------------------------------
let g:lightline = {'colorscheme': 'tokyonight'}
colorscheme tokyonight


" -------------------------------------
" Plugin Configurations
" ------------------------------------
"git"
nnoremap <leader>g :Git blame <CR>

"nerdtree"
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus <CR>

"telescope
nnoremap <C-p> <cmd>Telescope find_files <CR>
nnoremap <C-q> <cmd>Telescope live_grep <CR>

"ctags"
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_file_list_command = 'rg --files'
"rely on <C-o> to go forward and <C-i> to go back between 
nnoremap <silent><leader>d <C-]>
"find multiple definitions"
nnoremap <silent><leader>f g]

"coq"
let g:coq_settings = { 'auto_start': 'shut-up' }
