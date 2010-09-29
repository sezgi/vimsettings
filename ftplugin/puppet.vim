setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal autoindent
setlocal nocindent

imap <buffer> <C-l> <SPACE>=><SPACE>

nmap <D-R> :call SpecAll()<CR>

" Surround --------------------------------------------------------------------
let g:surround_108 = "lambda { \1 lambda arguments: \1 \r }"

" Syntax Settings -------------------------------------------------------------
let g:ruby_operators = 1
let g:ruby_space_errors = 1
