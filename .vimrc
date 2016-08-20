call plug#begin('~/.vim/plugs')
  source ~/.vim/plugs.vim
call plug#end()

set nocompatible
filetype plugin indent on

let $BASH_ENV="$HOME/.bash_aliases"

let maplocalleader=' '
let mapleader=','
nnoremap <Leader>; ,

set autoread
set hidden
set title
set ruler
set splitbelow
set splitright
set showcmd
set number

set colorcolumn=80
set history=100
set mouse=a
set pastetoggle=<F8>

set viminfo+=n~/.vim/viminfo
set viminfo^=!,h,f0,:100,/100,@100

set laststatus=2
set statusline=%<%f\ %y%m%r
set statusline+=%{fugitive#statusline()}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=%4.([%n]%)\  "keep trailing space
set statusline+=%-14.(%l,%c%V%)\ %P

if isdirectory($HOME.'/.vim/backup') == 0
  call mkdir($HOME.'/.vim/backup','p')
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backupskip+=/private/tmp/*
set backup

if isdirectory($HOME.'/.vim/swap') == 0
  call mkdir($HOME.'/.vim/swap','p')
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

if exists('+undofile')
  if isdirectory($HOME.'/.vim/undo') == 0
    call mkdir($HOME.'/.vim/undo','p')
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

augroup vimrcex
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  if !exists(':DiffOrig')
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis
  endif
augroup END

augroup unwantedspaces
  autocmd!
  let blacklist = ['help', 'man', 'tar']
  autocmd Syntax * if index(blacklist, &filetype) < 0 | syntax match ExtraSpace /\s\+$\|\s\+\ze\t\|\t\zs\s\+/ containedin=ALL | endif
  autocmd Syntax * if index(blacklist, &filetype) < 0 | syntax match NBSpace / \+/ containedin=ALL | endif
  autocmd ColorScheme * highlight ExtraSpace ctermbg=darkblue guibg=#8296a0
  autocmd ColorScheme * highlight NBSpace ctermbg=red guibg=#8c5050
augroup END
set list listchars=tab:→\  "keep trailing space
nmap <Leader>sp :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

augroup fastescape
  autocmd!
  autocmd InsertEnter * set timeoutlen=0
  autocmd InsertLeave * set timeoutlen=1000
augroup END

augroup msword
  autocmd!
  autocmd BufReadPre *.doc setlocal ro hlsearch!
  autocmd BufReadPost *.doc %!antiword %
augroup END

"syntax
syntax enable
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 8
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
augroup syntasticcolors
  autocmd!
  autocmd ColorScheme * highlight SyntasticError term=reverse ctermfg=252 ctermbg=131 guifg=#d0d0d0 guibg=#af5f5f
  autocmd ColorScheme * highlight SyntasticWarning term=reverse ctermfg=252 ctermbg=136 guifg=#d0d0d0 guibg=#af78700
  autocmd ColorScheme * highlight link SyntasticErrorSign SyntasticError
  autocmd ColorScheme * highlight link SyntasticWarningSign SyntasticWarning
  autocmd ColorScheme * highlight WarningMsg ctermfg=6 ctermbg=1 cterm=NONE guifg=#c9c9c9 guibg=#8c5050 gui=NONE
augroup END

"indents
set shiftwidth=2
set tabstop=2
set softtabstop=2
set backspace=indent,eol,start
set expandtab

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_exclude_filetypes = ['help', 'man', 'tar']
let g:indent_guides_auto_colors=0
augroup indentguides
  autocmd!
  autocmd VimEnter,ColorScheme * highlight IndentGuidesOdd ctermfg=240 ctermbg=008 guifg=#585858 guibg=#404040
  autocmd VimEnter,ColorScheme * highlight IndentGuidesEven ctermfg=240 ctermbg=237 guifg=#585858 guibg=#3a3a3a
augroup END

"folds
set foldenable
set foldmethod=syntax
augroup foldenter
  autocmd!
  autocmd BufWinEnter * silent! :%foldopen!
augroup END

"search
set ignorecase
set smartcase
set incsearch
set hlsearch
if executable('ag')
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif
nnoremap <silent> <Leader>/ :<C-U>nohlsearch<CR>
nnoremap K :let @/="<C-r><C-w>"<CR>:silent! grep! "\b<C-r>/\b"<CR>:copen<CR>:redraw!<CR>n

"https://is.gd/IBV2013
function! s:HLNext(blinktime)
  set invcursorline
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  set invcursorline
  redraw
endfunction
nnoremap <silent> n n:call <SID>HLNext(0.25)<CR>
nnoremap <silent> N N:call <SID>HLNext(0.25)<CR>

"nav
set whichwrap=<,>,h,l,[,]
set scrolljump=5
set scrolloff=3
noremap <Up> gk
noremap <Down> gj
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k
vnoremap j gj
vnoremap gj j
vnoremap k gk
vnoremap gk k

"windows
inoremap <Esc>+ <Esc><C-w>+
inoremap <Esc>_ <Esc><C-w>-
inoremap <Esc>> <Esc><C-w>>
inoremap <Esc>< <Esc><C-w><
inoremap <Esc>= <Esc><C-w>=
inoremap <Esc>- <Esc><C-w>_
vnoremap <Esc>+ <Esc><C-w>+
vnoremap <Esc>_ <Esc><C-w>-
vnoremap <Esc>> <Esc><C-w>>
vnoremap <Esc>< <Esc><C-w><
vnoremap <Esc>= <Esc><C-w>=
vnoremap <Esc>- <Esc><C-w>_
nnoremap <Esc>+ <C-w>+
nnoremap <Esc>_ <C-w>-
nnoremap <Esc>> <C-w>>
nnoremap <Esc>< <C-w><
nnoremap <Esc>= <C-w>=
nnoremap <Esc>- <C-w>_

"tmux
let g:tmux_navigator_no_mappings = 1
inoremap <silent> <Esc>H <C-o>:TmuxNavigateLeft<CR>
inoremap <silent> <Esc>J <C-o>:TmuxNavigateDown<CR>
inoremap <silent> <Esc>K <C-o>:TmuxNavigateUp<CR>
inoremap <silent> <Esc>L <C-o>:TmuxNavigateRight<CR>
inoremap <silent> <Esc>P <C-o>:TmuxNavigatePrevious<CR>
vnoremap <silent> <Esc>H <Esc>:TmuxNavigateLeft<CR>
vnoremap <silent> <Esc>J <Esc>:TmuxNavigateDown<CR>
vnoremap <silent> <Esc>K <Esc>:TmuxNavigateUp<CR>
vnoremap <silent> <Esc>L <Esc>:TmuxNavigateRight<CR>
vnoremap <silent> <Esc>P <Esc>:TmuxNavigatePrevious<CR>
nnoremap <silent> <Esc>H :TmuxNavigateLeft<CR>
nnoremap <silent> <Esc>J :TmuxNavigateDown<CR>
nnoremap <silent> <Esc>K :TmuxNavigateUp<CR>
nnoremap <silent> <Esc>L :TmuxNavigateRight<CR>
nnoremap <silent> <Esc>P :TmuxNavigatePrevious<CR>

"buffers
nnoremap <Leader>b <C-^>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"spell
set spell spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add
augroup spellcolors
  autocmd!
  let blacklist = ['applescript', 'help', 'man', 'matlab', 'octave', 'tar', 'vim']
  autocmd FileType * if index(blacklist, &filetype) > 0 | setlocal nospell | endif
  autocmd BufEnter *.conf,Portfile setlocal nospell
  autocmd ColorScheme * highlight SpellBad term=reverse ctermfg=14 ctermbg=95 guifg=#dcdcdc guibg=#875f5f
  autocmd ColorScheme * highlight SpellCap term=reverse ctermfg=14 ctermbg=2 guifg=#dcdcdc guibg=#657d3e
  autocmd ColorScheme * highlight SpellRare term=reverse ctermfg=14 ctermbg=3 guifg=#dcdcdc guibg=#a98051
  autocmd ColorScheme * highlight SpellLocal term=reverse ctermfg=14 ctermbg=102 guifg=#dcdcdc guibg=#878787
augroup END
map <F4> :setlocal spell! spell?<CR>
imap <F4> <C-o>:setlocal spell! spell?<CR>

"latex
let g:tex_flavor='latex'
function! s:ToggleTexCompiler()
  if g:Tex_CompileRule_pdf == 'xelatex -interaction=nonstopmode $*'
    let g:Tex_CompileRule_pdf='lualatex -interaction=nonstopmode $*'
  else
    let g:Tex_CompileRule_pdf='xelatex -interaction=nonstopmode $*'
  endif
endfunction
map <Leader>lc :call <SID>ToggleTexCompiler()<CR>:echo g:Tex_CompileRule_pdf<CR>

"run
nmap <Leader>xx :w<CR>:!%:p<CR>
nmap <Leader>xp :w<CR>:!python3 %<CR>
nmap <Leader>xb :w<CR>:!ruby %<CR>
nmap <Leader>xc :w<CR>:!gcc %<CR>
nmap <Leader>xb :w<CR>:!bash %<CR>

"colors
set background=dark
augroup aftercolors
  autocmd!
  autocmd ColorScheme * highlight Search ctermfg=235 ctermbg=143 cterm=NONE guifg=#262626 guibg=#afaf5f gui=NONE
  autocmd ColorScheme * highlight Normal ctermfg=15 ctermbg=236 cterm=NONE guifg=#d8c8bb guibg=#3a3a3a gui=NONE
  autocmd ColorScheme * highlight SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE guifg=#444444 guibg=NONE gui=NONE
augroup END
colorscheme railscasts-coloration

if has('gui_running')
  set guifont=Source\ Code\ Pro\ Light:h12
  augroup guivb
    autocmd!
    autocmd GUIEnter * set vb t_vb=
  augroup END
endif

" vim:ts=2 sw=2 et
