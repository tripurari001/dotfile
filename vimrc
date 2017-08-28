"pathogen init script
execute pathogen#infect()
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""
" settings witch are already enable on neovim "
"""""""""""""""""""""""""""""""""""""""""""""""

" enter into modern mode
set nocompatible
" Set syntax on
syntax on
filetype plugin indent on
set autoindent
" Set to auto read when a file is changed from the outside
set autoread
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" scan for autocompletion
set complete-=i
" dont show @ symbol if last line dosent fit on screen
set display+=lastline
" Higlhight search
set hls
" incrimental search
set incsearch
" set status line and show cursor position
set laststatus=2
" insert tab other than indention
"set smarttab
" improve the terminal connection
set ttyfast
" visual autocomplete for command menu
set wildmenu

"########### need modification if used in neovim ########
"########### need modification if used in neovim ########
"########### need modification if used in neovim ########
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
"########### need modification if used in neovim ########
"########### need modification if used in neovim ########
"########### need modification if used in neovim ########



" update screen only when needed
set lazyredraw

"set path to find all file inside recuesive 
set path+=**

" Show the (partial) command as it’s being typed
set showcmd

" show cursor position on status line 
set ruler

" set indention width to 2 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Turn on line numbering. Turn it off with 'set nonu'
set number
set relativenumber

" Case insensitive search
set ic

" Wrap text instead of being on one line
set lbr

" twig suppor with jinja 
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.twig set ft=jinja

"color scheme
syntax enable
set t_Co=256
set background=dark
colorscheme solarized

" Hilight current line
set cursorline

" show one extra line in bottom
set scrolloff=2
set sidescrolloff=5

" for keymaping time wait
set ttimeout
set ttimeoutlen=100

" utf-8 charset
set encoding=utf-8 nobomb

" to show invisible carecter as
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" trun on spelling check
set spell

" show the current mode
set showmode

" New window goes below
set splitbelow

" New windows goes right
set splitright

" Character for CLI expansion (TAB-completion)
set wildchar=<TAB> 

" ignore some system and temp file 
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*,*/cache/*
