" add plugins to runtimepath
call pathogen#infect()

" load plugin documentation
call pathogen#helptags()

" filetype detection
filetype plugin indent on

" syntax highlighting
syntax enable

" dark background
set t_Co=256
set background=dark
colorscheme delek

" show line numbers
set number

" hide the status line
set noruler
set laststatus=0

" hide the mode
set noshowmode

" don't backup
set nobackup
set nowritebackup
set noswapfile

" wrap lines
set textwidth=80
set wrap
set breakindent

" better new split positioning
set splitbelow
set splitright

" don't beep
set visualbell
set noerrorbells

" indent with two spaces
set tabstop=2
set softtabstop=2

" indent using >> and << with two spaces
set shiftwidth=2
set shiftround

" convert tabs to spaces in insert mode
set expandtab

" copy indentation from previous line
set copyindent

" copy/paste to system clipboard
set clipboard=unnamed

" ignore case when search is all lowercase
set smartcase

" wait 300ms on mappings
set timeout timeoutlen=600

" hide tildes on blank lines
highlight NonText ctermfg=8

" hide pipes in vertical split divider
highlight VertSplit ctermbg=0 ctermfg=0

" ala spacemacs
let mapleader="\<Space>"

" display files as a tree
let g:netrw_liststyle=3

" hide the info banner
let g:netrw_banner=0

" quick escape
inoremap jj <esc>

" tab complete
inoremap <Tab> <C-P>

" b is for buffer
nnoremap <Leader>bd :bd<CR>
nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <leader>bs :buffers<CR>

" f is for file
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fS :wa<CR>
nnoremap <Leader>fq :q<CR>

" p is for project
nnoremap <Leader>pt :Explore<CR>

" w is for window
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
