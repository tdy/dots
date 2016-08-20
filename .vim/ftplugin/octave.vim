if exists('+omnifunc') && &omnifunc == ''
  setlocal omnifunc=syntaxcomplete#Complete
endif

setlocal keywordprg=info\ octave\ --vi-keys\ --index-search
