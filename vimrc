"pathogen init script 
execute pathogen#infect()

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
