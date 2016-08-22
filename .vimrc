call plug#begin($HOME.'/.vim/plugs')
  source $HOME/.vim/plugs.vim
call plug#end()

set nocompatible
filetype plugin indent on

let $BASH_ENV = $HOME.'/.bash_aliases'

let maplocalleader = ' '
let mapleader = ','
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

set viminfo+=n$HOME/.vim/viminfo
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
set backupdir-=$HOME/
set backupdir^=$HOME/.vim/backup/
set backupdir^=./.vim-backup/
set backupskip+=/private/tmp/*
set backup

if isdirectory($HOME.'/.vim/swap') == 0
  call mkdir($HOME.'/.vim/swap','p')
endif
set directory=./.vim-swap//
set directory+=$HOME/.vim/swap//
set directory+=$HOME/tmp//
set directory+=.

if exists('+undofile')
  if isdirectory($HOME.'/.vim/undo') == 0
    call mkdir($HOME.'/.vim/undo','p')
  endif
  set undodir=./.vim-undo//
  set undodir+=$HOME/.vim/undo//
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
  let s:blacklist = ['diff', 'help', 'man', 'tar']
  autocmd Syntax * if index(s:blacklist, &filetype) < 0 | syntax match ExtraSpace /\s\+$\|\s\+\ze\t\|\t\zs\s\+/ containedin=ALL | endif
  autocmd Syntax * if index(s:blacklist, &filetype) < 0 | syntax match NBSpace / \+/ containedin=ALL | endif
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

"syntax
syntax enable
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 8
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"indents
set shiftwidth=2
set tabstop=2
set softtabstop=2
set backspace=indent,eol,start
set expandtab
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['diff', 'help', 'man', 'tar']
let g:indent_guides_auto_colors = 0

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
set spellfile=$HOME/.vim/spell/en.utf-8.add
augroup spellcolors
  autocmd!
  let s:blacklist = ['applescript', 'diff', 'help', 'man', 'matlab', 'octave', 'tar', 'vim']
  autocmd FileType * if index(s:blacklist, &filetype) > 0 | setlocal nospell | endif
  autocmd BufEnter *.conf,*.log,PKGBUILD,Portfile setlocal nospell
augroup END
map <F4> :setlocal spell! spell?<CR>
imap <F4> <C-o>:setlocal spell! spell?<CR>

"run
nmap <Leader>xx :w<CR>:!%:p<CR>
nmap <Leader>xp :w<CR>:!python3 %<CR>
nmap <Leader>xb :w<CR>:!ruby %<CR>
nmap <Leader>xc :w<CR>:!gcc %<CR>
nmap <Leader>xb :w<CR>:!bash %<CR>

"colors
set background=dark
colorscheme railscasts-coloration

"gui
if has('gui_running')
  set guifont=Menlo\ Regular:h12
  augroup guivb
    autocmd!
    autocmd GUIEnter * set vb t_vb=
  augroup END
endif

" vim:ts=2 sw=2 et
