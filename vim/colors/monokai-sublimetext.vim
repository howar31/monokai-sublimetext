highlight clear
if exists('syntax_on')
  syntax reset
endif
set termguicolors
let g:colors_name = 'monokai-sublimetext'

" Palette
let s:bg         = '#272822'
let s:fg         = '#f8f8f2'
let s:cursor     = '#f8f8f0'
let s:selection  = '#49483e'
let s:line_hl    = '#3e3d32'
let s:gutter     = '#75715E'
let s:guide      = '#3b3a32'
let s:black      = '#333333'
let s:grey       = '#666666'
let s:pink       = '#F92672'
let s:green      = '#A6E22E'
let s:yellow     = '#E6DB74'
let s:orange     = '#FD971F'
let s:cyan       = '#66D9EF'
let s:purple     = '#AE81FF'
let s:comment    = '#75715E'
let s:red        = '#C4265E'
let s:green_dim  = '#86B42B'
let s:yellow_dim = '#B3B42B'
let s:blue       = '#6A7EC8'
let s:magenta    = '#8C6BC8'
let s:cyan_dim   = '#56ADBC'
let s:white_dim  = '#e3e3dd'
let s:bright_blue = '#819aff'

" Editor
exe 'hi Normal       guifg='.s:fg.' guibg='.s:bg
exe 'hi NormalFloat  guifg='.s:fg.' guibg='.s:black
exe 'hi FloatBorder  guifg='.s:grey.' guibg='.s:black
exe 'hi Cursor       guifg='.s:bg.' guibg='.s:cursor
exe 'hi CursorLine   guibg='.s:line_hl.' cterm=NONE'
exe 'hi CursorColumn guibg='.s:line_hl
exe 'hi ColorColumn  guibg='.s:line_hl
exe 'hi LineNr       guifg='.s:gutter
exe 'hi CursorLineNr guifg='.s:fg.' gui=bold'
exe 'hi SignColumn   guibg='.s:bg
exe 'hi VertSplit    guifg='.s:guide
exe 'hi Visual       guibg='.s:selection
exe 'hi VisualNOS    guibg='.s:selection
exe 'hi Search       guifg='.s:bg.' guibg='.s:yellow
exe 'hi IncSearch    guifg='.s:bg.' guibg='.s:orange
exe 'hi MatchParen   guifg='.s:fg.' guibg='.s:grey.' gui=bold'
exe 'hi Folded       guifg='.s:comment.' guibg='.s:line_hl
exe 'hi FoldColumn   guifg='.s:comment
exe 'hi NonText      guifg='.s:guide
exe 'hi SpecialKey   guifg='.s:guide
exe 'hi EndOfBuffer  guifg='.s:bg

" Popup menu
exe 'hi Pmenu        guifg='.s:fg.' guibg='.s:black
exe 'hi PmenuSel     guifg='.s:fg.' guibg='.s:selection
exe 'hi PmenuSbar    guibg='.s:line_hl
exe 'hi PmenuThumb   guibg='.s:grey

" Status line / tab line
exe 'hi StatusLine   guifg='.s:fg.' guibg='.s:line_hl
exe 'hi StatusLineNC guifg='.s:comment.' guibg='.s:black
exe 'hi TabLine      guifg='.s:comment.' guibg='.s:black
exe 'hi TabLineFill  guibg='.s:black
exe 'hi TabLineSel   guifg='.s:fg.' guibg='.s:bg

" Messages
exe 'hi Title        guifg='.s:yellow.' gui=bold'
exe 'hi ModeMsg      guifg='.s:green.' gui=bold'
exe 'hi MoreMsg      guifg='.s:green
exe 'hi Question     guifg='.s:cyan
exe 'hi WarningMsg   guifg='.s:orange
exe 'hi ErrorMsg     guifg='.s:pink.' gui=bold'
exe 'hi Directory    guifg='.s:cyan
exe 'hi Conceal      guifg='.s:comment

" Syntax
exe 'hi Comment      guifg='.s:comment.' gui=italic'
exe 'hi Constant     guifg='.s:purple
exe 'hi String       guifg='.s:yellow
exe 'hi Character    guifg='.s:yellow
exe 'hi Number       guifg='.s:purple
exe 'hi Boolean      guifg='.s:purple
exe 'hi Float        guifg='.s:purple
exe 'hi Identifier   guifg='.s:fg
exe 'hi Function     guifg='.s:green
exe 'hi Statement    guifg='.s:pink
exe 'hi Conditional  guifg='.s:pink
exe 'hi Repeat       guifg='.s:pink
exe 'hi Label        guifg='.s:pink
exe 'hi Operator     guifg='.s:pink
exe 'hi Keyword      guifg='.s:pink
exe 'hi Exception    guifg='.s:pink
exe 'hi PreProc      guifg='.s:pink
exe 'hi Include      guifg='.s:pink
exe 'hi Define       guifg='.s:pink
exe 'hi Macro        guifg='.s:cyan
exe 'hi PreCondit    guifg='.s:pink
exe 'hi Type         guifg='.s:cyan.' gui=italic'
exe 'hi StorageClass guifg='.s:cyan.' gui=italic'
exe 'hi Structure    guifg='.s:cyan
exe 'hi Typedef      guifg='.s:cyan
exe 'hi Special      guifg='.s:purple
exe 'hi SpecialChar  guifg='.s:orange
exe 'hi Tag          guifg='.s:pink
exe 'hi Delimiter    guifg='.s:fg
exe 'hi SpecialComment guifg='.s:comment.' gui=bold'
exe 'hi Debug        guifg='.s:orange
exe 'hi Underlined   gui=underline'
exe 'hi Error        guifg='.s:pink
exe 'hi Todo         guifg='.s:orange.' gui=bold'

" Diff
hi DiffAdd    guibg=#2d3c2d
hi DiffChange guibg=#3c3c2d
exe 'hi DiffDelete guifg='.s:pink.' guibg=#3c2d2d'
hi DiffText   guibg=#4c4c3d gui=bold

" Terminal ANSI colors
let g:terminal_ansi_colors = ['#333333', '#C4265E', '#86B42B', '#B3B42B', '#6A7EC8', '#8C6BC8', '#56ADBC', '#e3e3dd', '#666666', '#f92672', '#A6E22E', '#e2e22e', '#819aff', '#AE81FF', '#66D9EF', '#f8f8f2']
