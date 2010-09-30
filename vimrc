" General settings ------------------------------------------------------------

" No vi compatibility
set nocompatible

" Share clipboard with the system
set clipboard+=unnamed

" Fancy menus
set wildmenu

set showcmd

set laststatus=0

" Show the line and column number of the cursor position
set ruler

" Do not redraw while running macros (much faster) (LazyRedraw)
" set lazyredraw

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

set mouse=a
set encoding=UTF-8

" Wraps around words and not letters
set linebreak

set nowrap

" File formats priority:
set fileformats=unix,dos,mac

" Edition
set expandtab
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set smarttab

set wildignore=*.swp,*.bak,*.pyc,*.class
set visualbell
set noerrorbells
" set title
set noswapfile
set nobackup

" Folding
set foldmethod=manual
set nofoldenable

" GUI only options ------------------------------------------------------------
if has('gui_running')
    colorscheme pastel_g
    set guioptions=meAcr
    if has('gui_gtk')
        set guifont=Akkurat-Mono\ 10
    elseif has('gui_macvim')
        set guifont=Menlo:h14
        set fuoptions=maxhorz,maxvert
        set transparency=2
    endif
else
    colorscheme geraud_term
endif

" Diff ------------------------------------------------------------------------
if &diff
    set nofoldenable
    set scrollbind
    set scrollopt=hor,ver
    set number
end

" Printing --------------------------------------------------------------------
set printencoding=UTF-8
set printfont=:h8
set printoptions=number:y;syntax:n

" Colors and Schemes ----------------------------------------------------------
filetype plugin indent on
syntax on
nmap <SILENT> <F5> :syn sync fromstart<CR>
set listchars=tab:»·,extends:+,precedes:<,nbsp:~,trail:·,eol:¬
map <F4> :set list!<CR>

" Search ----------------------------------------------------------------------
set hlsearch
set incsearch
set ignorecase
map <F3> :set hlsearch!<CR>

" Enhanced Commentify  --------------------------------------------------------
" let g:maplocalleader='c'
vmap <SILENT> <LocalLeader>c <Plug>VisualTraditional
nmap <SILENT> <LocalLeader>c <Plug>Traditional
let g:EnhCommentifyBindInInsert = 'No'
let g:EnhCommentifyMultiPartBlocks = 'Yes'
let g:EnhCommentifyPretty = 'Yes'
let g:EnhCommentifyRespectIndent = 'Yes'
let g:EnhCommentifyUseBlockIndent = 'Yes'

" A ---------------------------------------------------------------------------
let g:alternateExtensions_m = "h"
let g:alternateExtensions_h = "m"

" Syntax Highlight ------------------------------------------------------------
nmap <S-F5> :call DumpSyntaxItem()<CR>

" Spelling --------------------------------------------------------------------
set spell spelllang=en_us
set nospell
map <S-F2> :set spell!<CR>

set pastetoggle=<F2>

" Wrapping on/off -------------------------------------------------------------
map <F6> :set wrap!<CR>

" Local settings
" let HOST_SETTINGS = $HOME . '/.settings/vim.config/Hosts/' . split(hostname(), '\.')[0] . '.vim'
" if filereadable(HOST_SETTINGS)
"     execute 'source '.HOST_SETTINGS
" endif
