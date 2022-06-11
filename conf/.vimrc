set number
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cc=80
syntax on

call plug#begin('~/.vim/plugged')
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

"morhetz/gruvbox"
colorscheme gruvbox
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

"preservim/nerdtree"
let NERDTreeShowHidden=1
nnoremap <C-c> :NERDTreeClose<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-h> :call CocAction('doHover')<CR>

"prettier/vim-prettier"
packloadal
:command P Prettier

