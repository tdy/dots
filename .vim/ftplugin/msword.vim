if executable('antiword')
  autocmd BufReadPre <buffer> setlocal ro hlsearch!
  autocmd BufReadPost <buffer> %!antiword %
endif
