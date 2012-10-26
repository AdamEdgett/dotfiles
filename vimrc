"{{{Auto Commands

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif


"}}}

"{{{Misc Settings

" Necesary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command.  I love this!
set showcmd
set autochdir

" Folding Stuffs
" set foldmethod=marker
" set foldmarker={,}

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Enable mouse support in console
set mouse=a

" Got backspace?
set backspace=2

" Line Numbers PWN!
set number

set showmatch

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

set wildmenu

colorscheme dusk
set background=dark
set statusline=
set statusline+=%f\
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file
"}}}
