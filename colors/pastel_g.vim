set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "pastel_g"

"hi Example         guifg=NONE        guibg=NONE        gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
"
" General colors
hi Normal           guifg=#000000 guibg=#F0F0F0 gui=NONE
hi NonText          guifg=#070707 guibg=NONE    gui=NONE
" Cursor and selection
hi Cursor           guifg=#FFFFFF guibg=#FF0000 gui=NONE
hi Visual           guifg=#22486C guibg=#65B3FE gui=NONE

" Chrome
hi LineNr           guifg=#ABABAB guibg=#D8D8D0 gui=NONE
hi VertSplit        guifg=#202020 guibg=#303030 gui=NONE
hi StatusLineNC     guifg=#808080 guibg=#303030 gui=NONE
hi StatusLine       guifg=#B0B0B0 guibg=#404040 gui=NONE
hi WildMenu         guifg=#FFFFFF guibg=#606060 gui=BOLD
hi PmenuSbar        guifg=#000000 guibg=#FFFFFF gui=NONE
" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=#FFFFFF guibg=#505050 gui=BOLD

hi Folded           guifg=#707090 guibg=#EAEAF0 gui=NONE
hi Title            guifg=#707070 guibg=NONE    gui=NONE

hi SpecialKey       guifg=#808080 guibg=#343434 gui=NONE

"hi Ignore           guifg=gray        guibg=#000000       gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE

hi ErrorMsg         guifg=#FFFFFF guibg=#FF6060 gui=NONE
hi WarningMsg       guifg=#FFFFFF guibg=#FF6C60 gui=BOLD
hi Error            guifg=NONE    guibg=NONE    gui=UNDERCURL

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE    guibg=#181818 gui=NONE
  hi CursorColumn   guifg=NONE    guibg=#121212 gui=NONE
  hi MatchParen     guifg=#F6F3E8 guibg=#857B6F gui=BOLD
  hi Pmenu          guifg=#F6F3E8 guibg=#444444 gui=NONE
  hi PmenuSel       guifg=#000000 guibg=#CAE682 gui=NONE
  hi Search         guifg=#FFFFFF guibg=#FF0088 gui=UNDERCURL
endif

" Syntax highlighting
hi Define           guifg=#016692 guibg=NONE    gui=NONE
hi Comment          guifg=#898989 guibg=NONE    gui=NONE

hi String           guifg=#009F78 guibg=NONE    gui=ITALIC
hi Number           guifg=#264B80 guibg=#ECECEC gui=NONE

hi Keyword          guifg=#016692 guibg=NONE    gui=NONE
hi PreProc          guifg=#2F4AAD guibg=NONE    gui=NONE
hi Conditional      guifg=#6699CC guibg=NONE    gui=NONE

hi Todo             guifg=#FF6060 guibg=NONE    gui=NONE
hi Constant         guifg=#216423 guibg=NONE    gui=NONE

hi Identifier       guifg=#82565D guibg=NONE    gui=NONE
hi Function         guifg=#801800 guibg=NONE    gui=BOLD
hi Type             guifg=#801800 guibg=NONE    gui=ITALIC
hi Statement        guifg=#6699CC guibg=NONE    gui=NONE
hi Special          guifg=#E18964 guibg=NONE    gui=NONE
hi Delimiter        guifg=#00A0A0 guibg=NONE    gui=NONE
hi Operator         guifg=#333366 guibg=NONE    gui=NONE
hi Self             guifg=#D030D0

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

" Diff
"
hi DiffAdd      guifg=#008A00 guibg=#E0F0E0 gui=ITALIC
hi DiffDelete   guifg=#8A0000 guibg=#F0E0E0 gui=ITALIC
hi DiffChange   guifg=#00008A guibg=#E0E0F0 gui=ITALIC
hi DiffText     guifg=#00008A guibg=#D0D0E0 gui=ITALIC,BOLD

" Objective-C / C/ C++
let g:c_space_errors=1
let g:c_no_trail_space_error=1
let g:c_no_tab_space_error=1

" Python
let g:python_highlight_all=1
hi pythonBuiltins               guifg=#99CC99 guibg=#AABBCC  gui=NONE
hi link pythonSelf              Self

" Ruby
hi rubyRegexp                   guifg=#B18A3D guibg=NONE    gui=NONE
hi rubyRegexpDelimiter          guifg=#FF8000 guibg=NONE    gui=NONE
hi rubyEscape                   guifg=#FFFFFF guibg=NONE    gui=NONE
hi rubyInterpolationDelimiter   guifg=#00A0A0 guibg=NONE    gui=NONE
hi rubyControl                  guifg=#6699CC guibg=NONE    gui=NONE
hi rubyStringDelimiter          guifg=#336633 guibg=NONE    gui=NONE
hi rubySymbol                   guifg=#3A3D81 guibg=NONE    gui=ITALIC
hi link rubyClass               Keyword
hi link rubyModule              Keyword
hi link rubyKeyword             Keyword
hi link rubyOperator            Operator
hi link rubyIdentifier          Identifier
hi rubyInstanceVariable         guifg=#696989 guibg=NONE
hi link rubyGlobalVariable      Identifier
hi link rubyClassVariable       Identifier
hi link rubyConstant            Type
hi rubyRailsUserClass           guifg=#8C008A

" Erlang
hi link erlangKeyword PreProc
hi link erlangBrackets Number
hi link erlangBuiltInAtom Define

"rubyInclude
"hi rubyGlobalVariable          guifg=#FFCCFF      guibg=NONE      gui=NONE
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

" Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE
hi javaDocSeeTag              guifg=#CCCCCC     guibg=NONE        gui=NONE
"hi javaClassDecl              guifg=#CCFFCC     guibg=NONE        gui=NONE

" Special for XML
hi xmlTag           guifg=#604090 guibg=NONE    gui=NONE
hi xmlAttrib        guifg=#808080 guibg=NONE    gui=NONE
hi link xmlEndTag       xmlTag
hi link xmlTagName      xmlTag

" Special for HTML
hi htmlTag           guifg=#800040 gui=ITALIC
hi link hamlTag hamlClassChar
hi link htmlTagName htmlTag
hi link htmlEndTag Identifier

" Special for Haml
hi hamlClass guifg=#800040 gui=ITALIC
hi hamlClassChar guifg=#0288A8
hi link hamlId    hamlClass
hi link hamlIdChar hamlClassChar

" Special for Javascript
hi link javaScriptNumber      Number
hi link javaScriptBraces      Keyword

" Special for Python
"hi  link pythonEscape         Keyword

" Special for CSharp
hi  link csXmlTag             Keyword
