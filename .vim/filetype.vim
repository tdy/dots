if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  autocmd!
  autocmd BufRead,BufNewFile *.osa,*scpt,*.applescript setfiletype applescript
  autocmd BufRead,BufNewFile *.plt,*.gnuplot           setfiletype gnuplot
  autocmd BufRead,BufNewFile *.oct                     setfiletype octave
  autocmd BufRead,BufNewFile *.jl                      setfiletype julia
  autocmd BufRead,BufNewFile *.swift                   setfiletype swift
  autocmd BufRead,BufNewFile *.doc                     setfiletype msword
augroup END
