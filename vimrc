"pathogen init script
execute pathogen#infect()
call pathogen#helptags()

" enter into modern mode
set nocompatible


"set path to find all file inside recuesive 
set path+=**

" Indent automatically depending on filetype
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Turn on line numbering. Turn it off with 'set nonu'
set number

" Set syntax on
syntax on

" Case insensitive search
set ic

" incrimental search
set incsearch

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" twig suppor with jinja 
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.twig set ft=jinja

"color scheme
syntax enable
set background=dark
colorscheme solarized

" Hilight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" Set to auto read when a file is changed from the outside
set autoread

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" show one extra line in bottom
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

" dont show @ symbol if last line dosent fit on screen
set display+=lastline

" for keymaping time wait
set ttimeout
set ttimeoutlen=100

" scan for autocompletion
set complete-=i

" insert tab other than indention
"set smarttab

" set status line and show cursor position
set laststatus=2
set ruler

" utf-8 charset
if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

" to show invisible carecter as
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
