if exists('b:dump_syntax_item_loaded')
    finish
endif
let b:dump_syntax_item_loaded = 1

function! DumpSyntaxItem()
    let id = synID( line('.'), col('.'), 1 )
    echo printf( 'Syntax item [%s] -> [%s]', synIDattr(id,'name'), synIDattr(synIDtrans(id),'name') )
endfunction
