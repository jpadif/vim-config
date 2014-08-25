" buffers Mapping
map <F2> :bp<CR>
map <F3> :bn<CR>

" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

" Molokai settings 
colorscheme molokai
let g:molokai_original = 0
let g:rehash256 = 1
set background=dark
set number
set nowrap
" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
set guifont=Inconsolata\ for\ Powerline\ Medium\ 11
let g:Powerline_symbols = 'fancy'


" Nerdtree
" Nerdtree opens with ctrl+n
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_theme             = 'molokai'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts=1


let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" GUI settings
":set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar 
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif


let mapleader = ","

" ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


" Hide mode on status bar
set noshowmode

set copyindent
set autoread
set ttyfast
set ttyscroll=3

set autoindent
set smartindent

" Command line autocomplection
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*DS_Store*
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

set ignorecase                    " Case-insensitive searching.
set smartcase  


" Incremental search
set incsearch                     " Highlight matches as you type.
set hlsearch  

" Keeps the scroll offset 8 lines from top and bottom
set scrolloff=8


" PHP autocomplete
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

let g:syntastic_always_populate_loc_list=1
set ts=2 sw=2 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1

" Check for tags file recursively until code folder
:set tags=./tags;~/code

" Map update-tags for ,t
:noremap <Leader>t :!ctags-proj.sh<CR>



" Allow a configuration file per project
set exrc
set secure
