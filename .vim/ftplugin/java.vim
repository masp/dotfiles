" Hotkey to quickly import java classes
nnoremap <silent> <buffer> <leader>i :JavaImportOrganize<CR>

nnoremap <silent> <buffer> <leader>w :ProjectTree<CR>

inoremap { {<CR><BS>}<Esc>ko

nnoremap <silent> <buffer> <leader>p :JavaImpl<CR>

function! SetMakeFile()
  let filemk = "build.gradle"
  let pathmk = "./"
  let depth = 1
  while depth < 4
    if filereadable(pathmk . filemk)
      return pathmk
    endif
    let depth += 1
    let pathmk = "../" . pathmk
  endwhile
  return "."
endfunction

command! -nargs=* Make tabnew | let $mkpath = SetMakeFile() | make <args> -C $mkpath | cwindow 10

" == Set tab settings ==
set tabstop=4
set noexpandtab
set shiftwidth=4
set softtabstop=4

set autoindent
set cindent
" ======================
