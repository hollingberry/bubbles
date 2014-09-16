" load any plugins
execute pathogen#infect()

" enable vim features
set nocompatible

" map <esc> to jj
inoremap jj <esc>

" visual tweaks
syntax on
set t_Co=256
set background=dark

" show line numbers
set number

" hide the status line
set noru
set laststatus=0
set noshowmode

" don't wrap lines
set nowrap
 
" pane-switching shortcuts
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" map blobs to file types
au BufRead,BufNewFile *.ru setfiletype ruby
au BufRead,BufNewFile Gemfile setfiletype ruby
au BufRead,BufNewFile *.md setfiletype markdown

" don't beep
set visualbell
set noerrorbells

" allow deleting stuff while in insert mode
set backspace=indent,eol,start

" indentation settings
set smarttab
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set shiftround
set autoindent
set copyindent

" allow mouse navigation
set mouse=a

" search settings
set ignorecase
set smartcase

" repeated key press settings
set timeout timeoutlen=1000 ttimeoutlen=30

" dim tildes on blank lines
highlight NonText ctermfg=0
