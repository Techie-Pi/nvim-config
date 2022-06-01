:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'terryma/vim-multiple-cursors'
Plug 'ap/vim-css-color'
Plug 'preservim/tagbar'
Plug 'vim-airline/vim-airline-themes'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'phaazon/hop.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'neoclide/coc.nvim'
" :CocInstall coc-snippets
" :CocInstall coc-tsserver
" :CocInstall coc-rls
" :CocInstall coc-pairs
" :CocInstall coc-json
" :CocInstall coc-yaml 

set encoding=UTF-8
call plug#end()

:lua require("hop").setup()
:lua require("toggleterm").setup()

nnoremap <C-M-f> :NERDTreeFocus<CR>
nnoremap <C-M-n> :NERDTree<CR>
nnoremap <C-M-t> :NERDTreeToggle<CR>

nnoremap <C-A> <cmd>lua require("telescope.builtin").find_files()<CR>

nnoremap <Tab> :HopLine<CR>

nnoremap <S-right> :tabnext<CR>
nnoremap <S-left> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :bd<CR>
nnoremap <C-s> :w<CR>

nnoremap <C-z> :undo<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:tagbar_ctags_bin="C:\\ctags58\\ctags.exe"

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='bubblegum'

if !exists('g.airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '  '

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
