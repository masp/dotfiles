" ============= Info ===========
" Author: Mark Asp
" Purpose: C++ specific settings
" ==============================


" Allows CPP and HPP files to be switched easily "
function! OpenOther()
	if expand("%:e") == "cpp"
		exe "split" fnameescape(expand("%:p:r:s?src?include?").".hpp")
	elseif expand("%:e") == "hpp"
		exe "split" fnameescape(expand("%:p:r:s?include?src?").".cpp")
	endif
endfunction

" Use ,o to switch between header and source files
nnoremap ,o :call OpenOther()<CR>

inoremap {<CR> {<CR>}<Esc>O

set makeprg=make\ -C\ build

nnoremap <F9> :Make<CR>
nnoremap <F8> :Start ./run.sh<CR>

" Indentation
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
