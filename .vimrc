" .vimrc (c) 2001 J.C. van Nieuwenhuizen
" $Id: vimrc 2232 2008-07-18 21:46:39Z jnieuwen $
"set guioptions
"set guifont=-adobe-courier-medium-r-normal-*-*-180-*-*-m-*-iso8859-1
"set guifont=9x15

"Set vim  to use colors that look good
"on a dark background.
set background=dark
set cursorline
"set cursorcolumn

"Set the status line.
set statusline=%f\ [%m]\ Buffer:\ %n%=%l,%c%V\ %P

"Auto write
set autowrite

" Don't force write on buffer change.                                                                    
set hidden

"When a bracket is inserted, briefly jump to the matching one.
set showmatch

set matchtime=1

"set other options
set autoindent

" I don't believe in these backups
set nobackup 
set nowritebackup

set laststatus=2
set showtabline=2
set noshowmode

set nohlsearch

set modelines=0

"Show tabs.
"set list
"set listchars=tab:\|·,trail:·,extends:«

set nonumber
set nowrap
set tags=./.tags;

"set textwidth=72

"set foldcolumn=0


"set paste

"set softtabstop=4
set shiftwidth=4
set tabstop=4
set et

"pathogen 
execute pathogen#infect()

"colorscheme solarized

"Underlinetag
augroup UnderlineTag
      autocmd!
      autocmd BufEnter *.pp UnderlineTagOn
augroup END

" Automatic indent feature.
filetype indent on
filetype plugin indent on

"Of course we want syntax highlighting.
syntax on

"==================================================
" AUTOCOMMANDS
"==================================================
autocmd BufNewFile,BufRead *COMMIT_EDITMSG set textwidth=79

au BufNewFile,BufRead *.py
  \ set tabstop=4
  \ softtabstop=4
  \ shiftwidth=4
  \ textwidth=79
  \ expandtab
  \ autoindent
  \ fileformat=unix

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim
let g:vim_json_syntax_conceal = 0

let g:autopep8_disable_show_diff=1
let b:syntastic_mode="passive"
let g:gitgutter_enabled=1
set updatetime=100
