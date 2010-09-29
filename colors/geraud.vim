" geraud color scheme
" originally ir_black color scheme
" More at: http://blog.infinitered.com/entries/show/8

" ********************************************************************************
" Standard colors used in all ir_#000000 themes:
" Note, x:x:x are RGB values

" ********************************************************************************
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "geraud"

" hi Example         guifg=NONE        guibg=NONE        gui=NONE

" General colors
hi Normal           guifg=#ffffff     guibg=#303030
hi NonText          guifg=#808080     guibg=NONE

hi Cursor           guifg=#000000     guibg=white
hi LineNr           guifg=#505050     guibg=NONE

hi VertSplit        guifg=#202020     guibg=#E0E0E0
hi StatusLine       guifg=#404040     guibg=#E0E0E0
hi StatusLineNC     guifg=#202020     guibg=#707070

hi Folded           guifg=#A0A8B0     guibg=#384048
hi Title            guifg=#F6F3E8     guibg=NONE        gui=BOLD
hi Visual           guifg=NONE        guibg=#800056

hi SpecialKey       guifg=#808080     guibg=#343434

hi WildMenu         guifg=green       guibg=yellow
hi PmenuSbar        guifg=#000000     guibg=white
hi Error            guifg=NONE        guibg=NONE        gui=UNDERCURL
hi ErrorMsg         guifg=white       guibg=#FF6060
hi WarningMsg       guifg=white       guibg=#FF6C60     gui=BOLD

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=#000000     guibg=#C6C5FE     gui=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#181818
  hi CursorColumn   guifg=NONE        guibg=#121212
  hi MatchParen     guifg=#F6F3E8     guibg=#857B6f     gui=BOLD
  hi Pmenu          guifg=#F6F3E8     guibg=#444444
  hi PmenuSel       guifg=#000000     guibg=#CAE682
  hi Search         guifg=#FFFFFF     guibg=#FF0088     gui=UNDERCURL
endif

" Syntax highlighting
hi Define           guifg=#777777
hi Comment          guifg=#7C7C7C
hi Todo             guifg=#909000

hi String           guifg=#A8FF60     guibg=#2D3428
hi Number           guifg=#FF90FF

hi Keyword          guifg=#96CBFE
hi PreProc          guifg=#96CBFE
hi Conditional      guifg=#6699CC

hi Constant         guifg=#99CC99

hi Identifier       guifg=#C6C5FE

hi Function         guifg=#DC2F87
"hi Function         guifg=#FFD2A
hi Type             guifg=#EFEFA6
hi Statement        guifg=#6699CC

hi Special          guifg=#E18964
hi Delimiter        guifg=#00A0A0
hi Operator         guifg=#F0B0B0

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
" hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

" Python
let g:python_highlight_all=1
hi pythonBuiltins              guifg=#99CC99
hi pythonSelf                  guifg=#D0B0FF
"hi  link pythonEscape         Keyword

" Ruby
hi rubyRegexp                  guifg=#B18A3D
hi rubyRegexpDelimiter         guifg=#FF8000
hi rubyEscape                  guifg=white
hi rubyInterpolationDelimiter  guifg=#00A0A0
hi rubyControl                 guifg=#6699CC
hi rubySymbol                  guifg=#00C0C0
hi link rubyClass             Keyword
hi link rubyDefine            Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type

" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier

" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Identifier

" Haml
hi hamlFold guifg=#6D9478
hi hamlClass guifg=#4E7CA0 gui=ITALIC
hi hamlClassChar guifg=#55A6EB
hi link hamlId    hamlClass
hi link hamlIdChar hamlClassChar

" Special for Javascript
hi link javaScriptNumber      Number

" Special for Java
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi javaDocSeeTag              guifg=#CCCCCC
hi javaDocSeeTag              guifg=#CCCCCC
"hi javaClassDecl              guifg=#CCFFCC
