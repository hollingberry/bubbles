hi clear

let colors_name = "darkbloom"

hi  DiffAdd     term=bold            ctermbg=LightBlue
hi  DiffChange  term=bold            ctermbg=LightMagenta
hi  DiffDelete  term=bold            ctermfg=Blue          ctermbg=LightCyan
hi  DiffText    term=reverse         cterm=bold            ctermbg=Red
hi  Directory   term=bold            ctermfg=DarkBlue
hi  ErrorMsg    term=standout        ctermfg=White         ctermbg=DarkRed
hi  FoldColumn  term=standout        ctermbg=Grey          ctermfg=DarkBlue
hi  Folded      term=standout        ctermbg=Grey          ctermfg=DarkBlue
hi  IncSearch   term=reverse         cterm=reverse
hi  LineNr      term=underline       ctermfg=Brown
hi  ModeMsg     term=bold            cterm=bold
hi  MoreMsg     term=bold            ctermfg=DarkGreen
hi  Pmenu       term=reverse         ctermfg=White         ctermbg=Blue
hi  Question    term=standout        ctermfg=DarkGreen
hi  Search      term=reverse         ctermfg=NONE          ctermbg=Yellow
hi  SpecialKey  term=bold            ctermfg=DarkBlue
hi  Title       term=bold            ctermfg=DarkMagenta
hi  VertSplit   term=reverse         ctermfg=White         ctermbg=White
hi  Visual      term=reverse         cterm=NONE            ctermbg=254
hi  VisualNOS   term=underline,bold  cterm=underline,bold
hi  WarningMsg  term=standout        ctermfg=DarkRed
hi  WildMenu    term=standout        ctermbg=Yellow        ctermfg=Black

hi  StatusLine    cterm=bold  ctermbg=blue  ctermfg=yellow
hi  StatusLineNC  cterm=bold  ctermbg=blue  ctermfg=black
hi  NonText       term=bold   ctermfg=White

" syntax highlighting
hi  PreProc     term=underline  cterm=NONE  ctermfg=darkmagenta
hi  Identifier  term=underline  cterm=NONE  ctermfg=darkcyan
hi  Comment     term=NONE       cterm=NONE  ctermfg=lightgray
hi  Constant    term=underline  cterm=NONE  ctermfg=darkgreen
hi  Special     term=bold       cterm=NONE  ctermfg=blue
hi  Statement   term=bold       cterm=bold  ctermfg=blue
hi  Type        term=underline  cterm=NONE  ctermfg=blue

if exists("syntax_on")
  let syntax_cmd = "enable"
  runtime syntax/syncolor.vim
  unlet syntax_cmd
endif
