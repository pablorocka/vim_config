" Vim color file modified from original desert.vim
" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="desert-mod"

"hi Normal       guifg=#ffffff    ctermfg=231    guibg=#1c1c1c    ctermbg=234    gui=none    cterm=none
hi Normal       guifg=#ffffff    ctermfg=231    guibg=#1c1c1c    ctermbg=234    gui=none    cterm=none
"hi Normal       guifg=#ffffff    ctermfg=231    guibg=#181818    ctermbg=234    gui=none    cterm=none

" highlight groups
hi Cursor       guibg=#f0e68c   guifg=#708090
hi CursorLine   guibg=#282828
hi VertSplit    guibg=#c2bfa5 guifg=#7f7f7f gui=none
hi Folded       guibg=#4d4d4d guifg=#ffd700
hi FoldColumn   guibg=#4d4d4d guifg=#d2b48c
hi IncSearch    guibg=#f0e68c guifg=#708090
hi ModeMsg      guifg=#daa520
hi MoreMsg      guifg=#2e8b57
hi NonText      guibg=#181818    ctermbg=234    guifg=#505050    ctermfg=52    gui=none    cterm=none
hi Question     guifg=#00ff7f
hi Search       guibg=#cd853f guifg=#f5deb3
hi SpecialKey   guifg=#9acd32
hi StatusLine   guibg=#c2bfa5 guifg=#000000 gui=none
hi StatusLineNC guibg=#c2bfa5 guifg=#7f7f7f gui=none
hi Title        guifg=#cd5c5c
hi Visual       guibg=#6b8323 gui=none guifg=#181800
"hi VisualNOS
hi WarningMsg guifg=#fa8072
"hi WildMenu
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment    guifg=#75715e    ctermfg=242 guibg=#202020
"hi Comment    guifg=#75715e    ctermfg=242 guibg=#202020 gui=bold
hi Constant   guifg=#ffa0a0
hi Identifier guifg=#a6e22e
hi Statement  guifg=#66d8ef     ctermfg=242 gui=none    cterm=none
hi PreProc    guifg=#f92673     gui=bold
hi Type       guifg=#a6e22e     ctermfg=248 gui=none    cterm=none
hi Special    guifg=#ff9900
hi Ignore     guifg=#666666
hi Todo       guifg=#ff4500     guibg=#eeee00
hi String     guifg=#ff87ce     ctermfg=254    gui=none    cterm=none
"hi Number     guifg=#ae81ff
"hi Character  guifg=#e6db74    ctermfg=254    gui=none    cterm=none
"hi Constant   guifg=#e6db74    ctermfg=254    gui=none    cterm=none

" color terminal definitions
hi SpecialKey   ctermfg=darkgreen
hi NonText      cterm=bold ctermfg=darkblue
hi Directory    ctermfg=darkcyan
hi ErrorMsg     cterm=bold ctermfg=7 ctermbg=1
hi IncSearch    cterm=NONE ctermfg=yellow ctermbg=green
hi Search       cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg      ctermfg=darkgreen
hi ModeMsg      cterm=NONE ctermfg=brown
hi LineNr       ctermfg=3 guifg=#b0b0b0 guibg=#404040 gui=bold
hi Question     ctermfg=green
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit    cterm=reverse
hi Title        ctermfg=5
hi Visual       cterm=reverse
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=1
hi WildMenu     ctermfg=0 ctermbg=3
hi Folded       ctermfg=darkgrey ctermbg=NONE
hi FoldColumn   ctermfg=darkgrey ctermbg=NONE
hi DiffAdd      ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold ctermfg=4 ctermbg=6
hi DiffText     cterm=bold ctermbg=1
hi Comment      ctermfg=darkcyan
hi Constant     ctermfg=brown
hi Special      ctermfg=5
hi Identifier   ctermfg=6
hi Statement    ctermfg=3
hi PreProc      ctermfg=5
hi Type         ctermfg=2
hi Underlined   cterm=underline ctermfg=5
hi Ignore       cterm=bold ctermfg=7
hi Ignore       ctermfg=darkgrey
hi Error        cterm=bold ctermfg=7 ctermbg=1


"vim: sw=4
