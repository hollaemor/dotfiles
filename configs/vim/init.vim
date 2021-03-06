" Plugins 
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'jnurmine/Zenburn'
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'neoclide/coc.nvim', {'branch': 'release' }
Plug 'joshdick/onedark.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-eunuch'
Plug 'ekalinin/dockerfile.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'rust-lang/rust.vim'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-repeat'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-css-color'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/vim-emoji'
Plug 'cespare/vim-toml'
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx'
Plug 'preservim/nerdcommenter'



" Denite. still yet to configure
if has('nvim')
  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'morhetz/gruvbox'
call plug#end()


" Disable arrow keys
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>


" Move between buffers using Shift + arrow key
nnoremap <S-Left> :bprevious<cr>
nnoremap <S-Right> :bnext<cr>

" Basic editor settings
syntax on
set relativenumber
set clipboard=unnamed
set mouse=a
set encoding=utf-8
" Enable folding
set foldmethod=indent
set foldlevel=99
" set ignore case during search
set ic

" do not create swap files
set noswapfile

set scrolloff=5

" highlight current line
set cursorline
" Enable folding with the spacebar
nnoremap <space> za


" Configure SimpylFold
let g:SimpylFold_docstring_preview=1




" Color Scheme and background
set termguicolors
set background=dark
let python_highlight_all=1
colorscheme gruvbox
" Fix transparent background
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE







" Configure ALE
let g:ale_fix_on_save = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" Update CtrlP to use devicons
let g:webdevicons_enable_ctrlp = 1

" show ALE errors in airline
let g:airline#extensions#ale#enabled = 1
" Configure coc
" if hidden is not set, TextEdit might fail.
set hidden

" ------------------------------------------------------------------------------
" golang specifics. Plugin: vim-go
" ------------------------------------------------------------------------------

" set indentations
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_fmt_command = "goimports" 
let g:go_auto_type_info = 1
let g:go_addtags_transform = "camelcase"
let g:go_test_show_name = 1
let g:go_echo_command_info = 1

au FileType go nmap <F8> :GoMetaLinter<cr>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>
au FileType go nmap <F10> :GoTest -short<cr>
au Filetype go nmap <leader>ga :GoAlternate<cr>
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <leader>gt :GoDeclsDir<cr>
au FileType go nmap <leader>gc :GoCoverageToggle<cr>
au FileType go nmap <leader>gd <Plug>(go-def)
au FileType go nmap <leader>gdv <Plug>(go-def-vertical)
au FileType go nmap <leader>gdh <Plug>(go-def-split)
au FileType go nmap <leader>gD <Plug>(go-doc)
au FileType go nmap <leader>gDv <Plug>(go-doc-vertical)

" disable :GoDef gd
let g:go_def_mapping_enabled = 0
let g:go_doc_popup_window = 1
let g:go_doc_keywordprg_enabled = 0

" Use emojis as Git Gutter symbols
if emoji#available()
	let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
	let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
	let g:gitgutter_sign_removed =  emoji#for('small_red_triangle')
	let g:gitgutter_sign_modified_removed =  emoji#for('collision')
endif

" emoji completion
set completefunc=emoji#complete

" -----------------------------------------------------------------------
" YAML
" --------------------------------------------------------------------
au FileType yaml set expandtab
au FileType yaml set shiftwidth=2
au FileType yaml set softtabstop=2
au FileType yaml set tabstop=2



" -----------------------------------------------------------------------
" Python
" --------------------------------------------------------------------
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4
 

"-----------------------------------------------------------------------
"  CtrlP settings
"-----------------------------------------------------------------------
" ignore files and directories with extensions
 let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ }

let g:ctrlp_working_path_mode = 'ra'
" ---------------------------------------------------------------------
"  Coc Config 
"  --------------------------------------------------------------------
"
"  
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=200

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')} 
set laststatus=2

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


" set airline theme
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" Gruvbox config
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1

" setup Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile


" set python interpreter for neovim
let g:python3_host_prog = '/usr/bin/python3'
" disbale python2
let g:loaded_python_provider = 0


"-----------------------------------------------------
"Plugin: scrooloose/nerdtree
"-----------------------------------------------------
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$', '\~$', '^node_modules$', '^\.DS_Store$', '^\.git$'] "ignore files in NERDTree
let NERDTreeQuitOnOpen = 1


" -------------------------------------
" plugin tagbar
" ------------------------------------
noremap <leader>t :TagbarToggle<cr>

" ------ tagbar settings for Go
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


"-----------------------------
"Plugin: Nerdcommenter
"----------------------------
nmap <C-_> <Plug>NERDCommenterToggle<cr>
vmap <C-_> <Plug>NERDCommenterToggle<cr>gv
