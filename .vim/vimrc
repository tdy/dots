let mapleader=','
colors railscasts

set shiftwidth=2
set tabstop=2
set softtabstop=2
set whichwrap=<,>,h,l,[,]
set ignorecase
set smartcase
set scrolljump=5
set scrolloff=3
set history=50
set ruler
set showcmd
set incsearch
set showmatch
set number
set nofoldenable
set backspace=indent,eol,start "untab
set expandtab
autocmd FileType make setlocal noexpandtab
set t_Co=256
set foldmethod=syntax

if exists('+colorcolumn')
  set colorcolumn=80
  hi colorcolumn guibg=gray14 ctermbg=darkgray
endif

"set guifont=dina\ 12
set guifont=monaco\ 12
set mouse=a
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("autocmd")
  filetype plugin indent on
  augroup vimrcEx
  au!
  autocmd FileType text setlocal textwidth=78
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line ("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END
else
  set autoindent
endif "has("autocmd")

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
      \ | wincmd p | diffthis
endif

hi ExtraWhitespace ctermbg=darkblue guibg=darkblue
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL

"ms-word
autocmd BufReadPre *.doc set ro
autocmd BufReadPre *.doc set hlsearch!
autocmd BufReadPost *.doc %!antiword "%"

"avoid auto indent
set pastetoggle=<F10>

"go to start of wrapped line instead of next line
noremap <Up> gk
noremap <Down> gj

"clear search results
nnoremap <CR> :nohlsearch<CR><CR>

"latex
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after
