let g:tex_flavor = 'latex'

let g:Tex_CompileRule_pdf = 'lualatex --interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'dvi,pdf'
let g:Tex_ViewRule_pdf = 'Preview'
let g:Tex_UseMakefile = 1
let g:Tex_Menus = 0

setlocal shiftwidth=2
setlocal iskeyword+=:

function! s:ToggleTexCompiler()
  if g:Tex_CompileRule_pdf == 'xelatex -interaction=nonstopmode $*'
    let g:Tex_CompileRule_pdf = 'lualatex -interaction=nonstopmode $*'
  else
    let g:Tex_CompileRule_pdf = 'xelatex -interaction=nonstopmode $*'
  endif
endfunction

map <buffer> <Leader>lc :call <SID>ToggleTexCompiler()<CR>:echo g:Tex_CompileRule_pdf<CR>
