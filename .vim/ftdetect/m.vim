autocmd BufNewFile,BufRead *.m call s:FTm()

function! s:FTm()
  let n = 1
  while n < 10
    let line = getline(n)
    if line =~ '^\s*\(#\s*\(include\|import\)\>\|@import\>\|/\*\|//\)'
      setlocal filetype=objc
      return
    endif
    if line =~ '^\s*%!\(/.*octave\|octave\)'
      setlocal filetype=octave
      return
    endif
    if line =~ '^\s*%'
      setlocal filetype=matlab
      return
    endif
    if line =~ '^\s*(\*'
      setlocal filetype=mma
      return
    endif
    let n = n + 1
  endwhile
  if exists("g:filetype_m")
    exe "setlocal filetype=" . g:filetype_m
  else
    setlocal filetype=matlab
  endif
endfunction
