" Change the size of the current font

function Font_IncreaseSize()
    return ChangeFontSize( 1 )
endfunction

function Font_DecreaseSize()
    return ChangeFontSize( -1 )
endfunction

function ChangeFontSize( delta )
    let [ font_name, font_size; font_details ] = split( getfontname(), ':' )
    let font_size = min( [ 24, max( [ 8, a:delta + font_size[ 1 : -1 ] ] ) ] )
    let new_font_name = join( [ printf( "%s:h%d", font_name, font_size ) ] + font_details, ':' )
    silent execute printf( "set guifont=%s", new_font_name )
endfunction




