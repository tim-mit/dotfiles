set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="tim"

" COLOR NAME
" ---------------------------------
" Black
" DarkBlue
" DarkGreen
" DarkCyan
" DarkRed
" DarkMagenta
" Brown, DarkYellow
" LightGray, LightGrey, Gray, Grey
" DarkGray, DarkGrey
" Blue, LightBlue
" Green, LightGreen
" Cyan, LightCyan
" Red, LightRed
" Magenta, LightMagenta
" Yellow, LightYellow
" White
" ---------------------------------

hi LineNr          ctermbg=240 ctermfg=grey
hi String          ctermfg=grey
hi Normal          ctermfg=white
hi Comment         ctermfg=grey
hi Visual          ctermfg=white
" whitespace highlighting etc
hi SpecialKey      ctermfg=239
" a default value
hi Constant        ctermfg=white
" proc,global,variable etc
hi Statement       ctermfg=white
" colour of a variable value, ie $value
hi Identifier      ctermfg=lightblue cterm=none
hi Type            ctermfg=white
hi Search          term=reverse ctermbg=blue
" User1 is the first 4 characters of the statusline and User2 is the remainder
hi User1           ctermbg=240
hi User2           ctermbg=white ctermfg=black
" tab header bar colours
hi TabLineFill ctermbg=255
hi TabLineSel ctermfg=lightgrey
