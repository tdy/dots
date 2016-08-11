let g:matlab_auto_mappings = 0

nnoremap <buffer><silent> <LocalLeader>c :MatlabCliCancel<CR>
nnoremap <buffer><silent> <LocalLeader>h :MatlabCliHelp<CR>
nnoremap <buffer><silent> <LocalLeader>e :MatlabCliOpenInMatlabEditor<CR>
nnoremap <buffer><silent> <LocalLeader>i :MatlabCliViewVarUnderCursor<CR>

nnoremap <buffer><silent> <C-j> :MatlabCliRunLine<CR>
nnoremap <buffer><silent> <C-m> :MatlabCliRunCell<CR>
vnoremap <buffer><silent> <C-m> :<C-u>MatlabCliRunSelection<CR>

nnoremap <buffer><silent> <C-h> :MatlabNormalModeCreateCell<CR>
vnoremap <buffer><silent> <C-h> :<C-u>MatlabVisualModeCreateCell<CR>
inoremap <buffer><silent> <C-h> <C-o>:MatlabInsertModeCreateCell<CR>
