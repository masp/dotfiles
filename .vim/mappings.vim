" ====== General Mappings ========
" Allows j and k to exit insert mode 
inoremap jk <Esc>
" ================================

" ======= Command Mappings =======
" Force a save without having to run vim in sudo
cmap w!! w !sudo tee % >/dev/null

" Allow ; to enter a command
nnoremap ; :
" ================================

" ======= Text Management ========
" F2 causes pastemode to be turned on
set pastetoggle=<F2>

" Pressing enter in normal mode causes a new line below
nnoremap <CR> A<CR><ESC>K

" Yank from currnet pos to end of line
nnoremap Y y$
" ================================

" ====== File Management =========
" Opens .vimrc file quickly
nnoremap <silent> <leader>ev :sp $MYVIMRC<CR>
" Uploads the changes to the .vimrc well
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Alias for command W to do the same as w, which is to save the file
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
" ================================

" ======== Fold Mappings =========
nnoremap <silent> <space> za
" ================================

" ========== Movement ============

" EasyMotion Quicker Movement
map <Tab> <Plug>(easymotion-prefix)

" EasyMotion hjkl keys
map <Tab>h <Plug>(easymotion-lineforward)
map <Tab>j <Plug>(easymotion-j)
map <Tab>k <Plug>(easymotion-k)
map <Tab>l <Plug>(easymotion-linebackward)

" Keep cursor colum when using JK motion
let g:EasyMotion_startofline = 0

" Below allow vim movement keys prefixed
" by the leader key to be
" used to go between windows
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Make j and k move on visual lines, not actual lines 
nnoremap j gj
nnoremap k gk
" H and L move to the end and start of lines in their respective dirs
nnoremap H ^
nnoremap L $
onoremap H ^
onoremap L $

" ================================

" =========== Search =============
" Clear the search highlighting
nnoremap <c-l> :nohl<CR><c-l>

" When moving either backwards or forwards in search, immediately
" center that line in the center of the window to prevent strain
nnoremap n nzz
nnoremap N Nzz
" ================================

" ==== General Abbreviations =====
" Abbreviations and Keywords 
iabbrev adn and
iabbrev waht what

iabbrev @@ asp.mark.steven@gmail.com
iabbrev ssig -- Mark Asp
iabbrev ccopy Copyright 2013 Mark Asp, all rights reserved.
iabbrev relaly really
" ================================

" ======= Plugin Mappings ========

" ================================
