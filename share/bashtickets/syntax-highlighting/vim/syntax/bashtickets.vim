" Vim syntax file
" Language   : bashtickets
" Filenames  : *.ticket, *.milestone
" Maintainer : Tasos Papastylianou <tpapastylianou@hotmail.com>
" Last Change: 2022-06-19

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Blue ticket field headers plus trailing yellow text
syn region Yellowo matchgroup=LightBlueo start="^ Ticket No." end="$"
syn region Yellowo matchgroup=LightBlueo start="^    Summary" end="$"
syn region Yellowo matchgroup=LightBlueo start="^   Reporter" end="$"
syn region Yellowo matchgroup=LightBlueo start="^       Type" end="$"
syn region Yellowo matchgroup=LightBlueo start="^   Priority" end="$"
syn region Yellowo matchgroup=LightBlueo start="^  Milestone" end="$"
syn region Yellowo matchgroup=LightBlueo start="^   Keywords" end="$"
syn region Yellowo matchgroup=LightBlueo start="^         Cc" end="$"
syn region Yellowo matchgroup=LightBlueo start="^      Owner" end="$"
syn region Yellowo matchgroup=LightBlueo start="^       Date" end="$"
syn region Yellowo matchgroup=LightBlueo start="^     Status" end="$"
syn region Yellowo matchgroup=LightBlueo start="^ Resolution" end="$"

" Open/Close is special; Open and Close have their own colours
syn match BoldLightYellowRedo "^Open\/Closed: Open$" contains=Yellowo
syn match Yellowo "^Open\/Closed: \zeOpen$" contains=LightBlueo contained
syn match LightBlueo   "^Open\/Closed\ze: Open$" contained

syn match BoldLightGreeno "^Open\/Closed: Closed$" contains=Yellowo
syn match Yellowo "^Open\/Closed: \zeClosed$" contains=LightBlueo contained
syn match LightBlueo   "^Open\/Closed\ze: Closed$" contained

syn match Yellowo "^Open\/Closed: \(Open$\|Closed$\)\@!.*$" contains=LightBlueo
syn match LightBlueo   "^Open\/Closed\ze: \(Open$\|Closed$\)\@!.*$" contained

" Description differs slightly; only colon is yellolw; remaining text is normal
syn region Yellowo matchgroup=LightBlueo start="^Description" end=" "

" Colour comment date headers with bold lightcyan
syn match BoldLightCyano "^== [[:digit:]][[:digit:]][[:digit:]][[:digit:]]-[[:digit:]][[:digit:]]-[[:digit:]][[:digit:]]$"

" Blue milestone headers with yellow text
syn region Yellowo matchgroup=LightBlueo start="^Milestone No." end="$"
syn region Yellowo matchgroup=LightBlueo start="^  Parent Node" end="$"
syn region Yellowo matchgroup=LightBlueo start="^        Title" end="$"
syn region Yellowo matchgroup=LightBlueo start="^    Startdate" end="$"
syn region Yellowo matchgroup=LightBlueo start="^     Deadline" end="$"

" Description differs slightly; only colon is yellow; remaining text is normal
syn region Yellowo matchgroup=LightBlueo start="^  Description" end=" "

" Make 'Open Tickets' and 'Closed Tickets' headers stand out.
syn match BoldRedo "^=== Open Tickets ===$"
syn match BoldGreeno "^=== Closed Tickets ===$"

" Mark fields with missing space after colon as errors
syn match Erroro "^ Ticket No.:\($\|[^ ].*$\)"
syn match Erroro "^    Summary:\($\|[^ ].*$\)"
syn match Erroro "^   Reporter:\($\|[^ ].*$\)"
syn match Erroro "^       Type:\($\|[^ ].*$\)"
syn match Erroro "^   Priority:\($\|[^ ].*$\)"
syn match Erroro "^  Milestone:\($\|[^ ].*$\)"
syn match Erroro "^   Keywords:\($\|[^ ].*$\)"
syn match Erroro "^         Cc:\($\|[^ ].*$\)"
syn match Erroro "^      Owner:\($\|[^ ].*$\)"
syn match Erroro "^       Date:\($\|[^ ].*$\)"
syn match Erroro "^     Status:\($\|[^ ].*$\)"
syn match Erroro "^ Resolution:\($\|[^ ].*$\)"
syn match Erroro "^Description:\($\|[^ ].*$\)"
syn match Erroro "^Open\/Closed:\($\|[^ ].*$\)"
syn match Erroro "^Milestone No.:\($\|[^ ].*$\)"
syn match Erroro "^  Parent Node:\($\|[^ ].*$\)"
syn match Erroro "^        Title:\($\|[^ ].*$\)"
syn match Erroro "^    Startdate:\($\|[^ ].*$\)"
syn match Erroro "^     Deadline:\($\|[^ ].*$\)"
syn match Erroro "^  Description:\($\|[^ ].*$\)"

" Group-code color definitions ==
hi def LightBlueo                      ctermfg=blue
hi def Yellowo                         ctermfg=darkyellow
hi def BoldRedo            cterm=bold  ctermfg=darkred
hi def BoldGreeno          cterm=bold  ctermfg=darkgreen
hi def BoldLightCyano      cterm=bold  ctermfg=cyan
hi def BoldLightGreeno     cterm=bold  ctermfg=green
hi def BoldLightYellowRedo cterm=bold  ctermfg=yellow  ctermbg=darkred
hi def Erroro              cterm=bold  ctermfg=black   ctermbg=red

let b:current_syntax = "bashtickets"
