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
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" File formats priority:
set fileformats=unix,dos,mac

" Edition
set expandtab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set smarttab
set scrolloff=2

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
    colorscheme blackboard
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
set smartcase
map <F3> :set hlsearch!<CR>
nmap <silent> <C-N> :set hlsearch!<CR>

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

" Trim white spaces
nnoremap <silent> <F7> :call TrimWhiteSpace()<CR>

" Exuberant ctags utility (for the taglist plugin)
let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'

" Taglist mapping
nnoremap <silent> <F8> :TlistToggle<CR>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" CleverTab
function! CleverTab()
  if pumvisible()
    return "\<C-N>"
  endif
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  elseif exists('&omnifunc') && &omnifunc != ''
    return "\<C-X>\<C-O>"
  else
    return "\<C-N>"
  endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

" CleverBrace
function! CleverBrace()
  if strpart( getline('.'), col('.')-2, 1 ) =~ '{'
    return "\<CR>}\<ESC>O"
  else
    return "\<CR>"
endfunction
inoremap <CR> <C-R>=CleverBrace()<CR>

" Clever parens
inoremap ( ()<Left>
imap %% <%=  %><Left><Left><Left>
imap %. <%  %><Left><Left><Left>

" Moving between split windows
map <C-j> <C-W><Down>
map <C-k> <C-W><Up>
map <C-h> <C-W><Left>
map <C-l> <C-W><Right> 

" Local settings
" let HOST_SETTINGS = $HOME . '/.settings/vim.config/Hosts/' . split(hostname(), '\.')[0] . '.vim'
" if filereadable(HOST_SETTINGS)
"     execute 'source '.HOST_SETTINGS
" endif
