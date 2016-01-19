" My .vimrc configuration {{{ 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Remove vi old behavior
set nocompatible			
filetype off				
" }}}

" Vim plug Configuration {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim	
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Editor
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'honza/vim-snippets'

" Coding
Plugin 'SirVer/ultisnips'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'

" systemVeilog
Plugin 'vhda/verilog_systemverilog.vim'

call vundle#end()
filetype plugin indent on    
" }}}

" General {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hidden
" Better command-line completion
set wildmenu 
" Show partial commands in the last line of the screen
set showcmd
" Highlight searches (use <C-L> to temporarily turn off highlighting;
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
  
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
   
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
    
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
  
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
   
" Use visual bell instead of beeping when doing something wrong
set visualbell
    
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
  
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
   
" Display line numbers on the left
set number
set relativenumber
    
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
     
" Use <F11DSpaceDelims=1tween 'paste' and 'nopaste'
set pastetoggle=<F2>


" }}}

" Colors and Fonts {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax enable

set background=dark
colorscheme solarized
" }}}

" Text, tab and indent related {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set softtabstop=4
set shiftwidth=4

set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" }}}

" My person setting {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Floding
set foldmarker={{{,}}}
set foldmethod=marker
set foldlevel=0 
let php_folding = 1 
set foldnestmax=3 

nnoremap <space> <nop>
let mapleader   = "\<space>"
let g:mapleader = "\<space>"
" }}}

" Plugin setting {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

" nerdtree
map <Leader>e :NERDTreeToggle<CR>

" nerdcommenter
let g:NERDSpaceDelims=1

" Youcompleteme
let g:ycm_global_ycm_extra_conf = '/Users/yiweichen/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" ultisnips
let g:UltiSnipsExpandTrigger="<c-a>" 
let g:UltiSnipsJumpForwardTrigger="<c-j>" 
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:verilog_syntax_fold = "function,task"
" }}}
