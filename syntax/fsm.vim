" fsm.vim - Syntax highlighting for FSM files

" Define the filetype
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "fsm"

" Keywords for FSM
syn keyword fsmKeyword NAME DESCRIPTION STATES START_STATE CURRENT_STATE END_STATE EVENTS TRANSITIONS REACTIONS
syn keyword fsmKeyword FROM TO WHEN DO FIRES

" Define State, Event, and Transition keywords
syn match fsmState    /\v^S_[A-Z0-9_]+/
syn match fsmEvent    /\v^E_[A-Z0-9_]+/
syn match fsmTransition /\v^T_[A-Z0-9_]+/

" Define the @ syntax used for references (escape @)
syn match fsmAtRef    /\v\@[\w_]+/

" Define the colon character
syn match fsmColon    /:/

" String syntax for descriptions
syn match fsmString    /".*"/

" Highlight comments
syn match fsmComment   /\v\/\/.*/  " Line comments
syn match fsmComment   /\v\/\*.*\*\//  " Block comments

" Highlight identifiers (IDs) for state names, event names, etc.
syn match fsmID        /\v[A-Za-z_][A-Za-z0-9_]*/

" Group the highlighting
hi def link fsmKeyword Keyword
hi def link fsmState  Statement
hi def link fsmEvent  Identifier
hi def link fsmTransition  Type
hi def link fsmAtRef  Special
hi def link fsmColon  Delimiter
hi def link fsmString String
hi def link fsmComment Comment
hi def link fsmID Identifier

" Set the highlight for line comments (if using the Comment pattern)
hi def link fsmLineComment Comment
