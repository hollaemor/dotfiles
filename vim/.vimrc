syntax on

set number relativenumber

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
