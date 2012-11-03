"{{{Auto Commands

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif


"}}}

"{{{Misc Settings

set nocompatible

" Syntax Highlighting
filetype on
filetype plugin on
syntax enable

" Indentation and spacing
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

" Control options
set mouse=a
set backspace=2

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Line options
set number
set nostartofline

" Searching
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase

" Command options
set showcmd
set wildmenu
set cmdheight=2
set autochdir

" Display options
colorscheme dusk
set background=dark
set laststatus=2
set statusline=%t\ %r\ " Left side
set statusline+=%=%10((%l,%c)%)\ %P " Right side
"}}}
