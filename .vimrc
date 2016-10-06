" =========== Info ===============
"
" VimRC File
" Author: Mark Asp
" Purpose: Store overall ViM settings
"     that are specific to the editing
"     environment.
" ================================

" ==== Use ViM rather than Vi ====
set nocompatible
" ================================

" =========== Pathogen ===========
filetype plugin indent on
execute pathogen#infect()
" ================================

" ======= General Settings =======  
let mapleader=","                " Set the map leader to , for ease of use

set nomodeline                   " Don't allow modelines as they are vim only 

" --- Color Settings --
syntax on                        " Enable syntax coloring
set t_Co=256
colorscheme jellybeans
" ---------------------

set relativenumber               " Show the relative line number

set backspace=indent,eol,start   " Allow backspace to transcend lines
" ================================

" ========== Mappings ============
" Load mappings from ~/.vim/mappings.vim
if filereadable(expand("~/.vim/mappings.vim"))
  source ~/.vim/mappings.vim
endif

set notimeout ttimeout           " Time out for key codes only
set ttimeoutlen=1000             " Wait 200 millis
" ================================

" ========== Formatting ==========
" ---- Indentation ----
set shiftwidth=4                 " Set the tab width to 4 spaces
set tabstop=4                    " Set the tab width to 4 spaces
set expandtab                    " Convert tabs to spaces
" ---------------------

" ----- Wrapping ------
set wrap                         " Only wrap visually
set linebreak                    " Don't cut a word in half while wrapping
" ---------------------
" ================================ }}}

" ======= Window Settings ========
set hidden                       " Allow buffers to be hidden in the background
set confirm                      " Always ask for confirmation
set t_vb=                        " Do no visual things

" ---- Bottom Bar -----
set showcmd                      " Show the command being typed
set cmdheight=1                  " Make the command line 1 character tall 
set wildmenu                     " Complete for commands 
set laststatus=2                 " Make it so that status only shows with 2 or
                                 "    more windows
" ---------------------
" ================================

" ======= Search Settings ========
set hlsearch                     " Highlight search results
set smartcase                    " If all is lower, ingore case, if there is a
                                 "    capital letter, include it.
" ================================

" ============ Movement ==========
set nostartofline                " Keep cursor position when switching lines
" ================================

" ========= Persistance ==========

" Keep undo history across sessions
" by storing all changes all time
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Turn off all swap files
set noswapfile
set nobackup
set nowb

" ================================

" ====== Custom File Types =======
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au BufNewFile,BufRead *.gradle setf groovy
" ================================

" ======== GVim Settings =========
set guioptions-=m " remove menu bar
set guioptions-=T " remove toolbar
set guioptions-=r " remove right-hand scrollbar
set guioptions-=l " remove left-hand scrollbar
" ================================

" ======== CTag Settings =========
set tags+=./tags,tags;
" ================================

" ======== Plugin Config =========
let g:EclimCompletionMethod = 'omnifunc' " Have Eclim use YCM 

"let g:ycm_show_diagnostics_ui = 0        " Faster, faster

let g:syntastic_enable_highlighting = 0  " This makes it so much faster!
let g:syntastic_cpp_check_header = 1     " we want it to check headers

let g:UltiSnipsExpandTrigger="<undo>"
let g:UltiSnipsJumpForwardTrigger="<undo>"
let g:UltiSnipsJumpBackwardTrigger="<s-undo>"

" ================================

