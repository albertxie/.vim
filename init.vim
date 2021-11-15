" use true colors in the terminal
set termguicolors 


call plug#begin('~/.vim/plugged')
" ----------------------------------------------------------------------

Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug '907th/vim-auto-save'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'

" ----------------------------------------------------------------------
call plug#end()


" source extra settings
source ~/.nvim.vim
