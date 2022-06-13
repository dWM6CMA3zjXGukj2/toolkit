set cc=80
set expandtab
set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
syntax on

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

"morhetz/gruvbox"
colorscheme gruvbox
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

"neoclide/coc.nvim"
nnoremap <C-h> :call CocAction('doHover')<CR>

"preservim/nerdtree"
let NERDTreeShowHidden=1
nnoremap <C-c> :NERDTreeClose<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"prettier/vim-prettier"
packloadal
:command P Prettier
