
function! SpecAll()
  redir => output
  silent execute "!spec %"
  redir END
  belowright new
  silent put=output
  set nomodified
endfunction
command! -nargs=0 SpecAll call SpecAll()

function SpecOne()
  redir => output
  silent execute "!spec % -l " . line('.')
  redir END
  belowright new
  silent put=output
  set nomodified
endfunction
command! -nargs=0 SpecOne call SpecOne()
