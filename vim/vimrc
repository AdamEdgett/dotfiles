set nocompatible

"""""""""""""""""""""""
" Syntax Highlighting "
"""""""""""""""""""""""
filetype on
filetype plugin on
syntax enable

"""""""""""""""""""""""""""
" Indentation and spacing "
"""""""""""""""""""""""""""
set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

"""""""""""""""""""
" Control options "
"""""""""""""""""""
set mouse=a
set backspace=2

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

""""""""""""""""
" Line options "
""""""""""""""""
set number
set nostartofline

"""""""""""""
" Searching "
"""""""""""""
set incsearch
set hlsearch
set showmatch
set ignorecase
set smartcase

"""""""""""""""""""
" Command options "
"""""""""""""""""""
set showcmd
set wildmenu
set cmdheight=2
set autochdir

"""""""""""""""""""
" Display options "
"""""""""""""""""""
colorscheme elflord
set background=dark
set laststatus=2
" overwritten due to powerline
set statusline=%t\ %r\  " Left side
set statusline+=%=%10((%l,%c)%)\ %P " Right side

"""""""""""
" Plugins "
"""""""""""
" Pathogen
execute pathogen#infect()

" Powerline
set t_Co=256
let g:Powerline_symbols = 'fancy'
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
