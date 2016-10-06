
" ======== Info ===============
" Author: Mark Asp
" Purpose: .vim extension specific settings
" =============================

" ======== Indentation ========
setlocal expandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
" =============================

" ====== Fold Settings ========


" --------------------------
" - Function to define the -
" - folds for a vimscript file
" --------------------------
function! MarkdownFolder()
  let headerpattern = '\v^\" \=+ .+ \=+'
  let endheaderpattern = '\v^\" \=+'
  let emptypattern = '\v^\" \-+'

  let thisline = getline(v:lnum)

  if thisline =~? headerpattern
    return '1'
  elseif thisline =~? endheaderpattern 
    return '<1'
  elseif thisline =~? '/v^/s*'
    return '-1'
  endif

  return '='
endfunction
 
function! MarkdownFoldText()
  let foldsize = (v:foldend - v:foldstart)
  return getline(v:foldstart). ' (' . foldsize . ' lines)'
endfunction

setlocal foldmethod=expr             " Makes it so that we use a custom fold method
setlocal foldexpr=MarkdownFolder() " Defines the function to use
setlocal foldtext=MarkdownFoldText()

" =============================
