syntax on

set number relativenumber

" use system clipboard
set clipboard=unnamed

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()


" Enable folding
set foldmethod=indent
set foldlevel=99


" Enable folding with the spacebar
nnoremap <space> za


" Configure SimpylFold
let g:SimpylFold_docstring_preview=1


" Configure PEP 8 indentation for Python
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" Flag extra whitespace in Python files
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8


" Configure YouComplete me
let g:ycm_autoclose_preview_window_after_completion=1


" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this) )
EOF


let python_highlight_all=1


colorscheme zenburn

" Configure NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
