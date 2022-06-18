" Vim syntax file
" Language:	bashtickets
" Filenames:    *.ticket, *.milestone
" Maintainer:	Tasos Papastylianou <tpapastylianou@hotmail.com>
" Last Change:	2022-06-19

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn region Yellow matchgroup=Blue start="^ Ticket No." end="$"
syn region Yellow matchgroup=Blue start="^ Ticket No." end="$"
syn region Yellow matchgroup=Blue start="^    Summary" end="$"
syn region Yellow matchgroup=Blue start="^   Reporter" end="$"
syn region Yellow matchgroup=Blue start="^       Type" end="$"
syn region Yellow matchgroup=Blue start="^   Priority" end="$"
syn region Yellow matchgroup=Blue start="^  Milestone" end="$"
syn region Yellow matchgroup=Blue start="^   Keywords" end="$"
syn region Yellow matchgroup=Blue start="^         Cc" end="$"
syn region Yellow matchgroup=Blue start="^      Owner" end="$"
syn region Yellow matchgroup=Blue start="^       Date" end="$"
syn region Yellow matchgroup=Blue start="^Open/Closed" end="$"
syn region Yellow matchgroup=Blue start="^     Status" end="$"
syn region Yellow matchgroup=Blue start="^ Resolution" end="$"

syn region Yellow matchgroup=Blue start="^Milestone No." end="$"
syn region Yellow matchgroup=Blue start="^  Parent Node" end="$"
syn region Yellow matchgroup=Blue start="^        Title" end="$"
syn region Yellow matchgroup=Blue start="^    Startdate" end="$"
syn region Yellow matchgroup=Blue start="^     Deadline" end="$"
syn region Yellow matchgroup=Blue start="^  Description" end="$"

syn region Yellow matchgroup=Blue start="^Description" end=" "

syn match BoldRed "^=== Open Tickets ===$"
syn match BoldGreen "^=== Closed Tickets ===$"

syn match BoldBlue "^== [[:digit:]][[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]]-[[:digit:]][[:digit:]]$"


hi def Blue      ctermfg=blue
hi def Yellow    ctermfg=yellow
hi def BoldRed   cterm=bold ctermfg=red
hi def BoldGreen cterm=bold ctermfg=green
hi def BoldBlue  cterm=bold ctermfg=blue

let b:current_syntax = "bashtickets"
" vim: ts=8
