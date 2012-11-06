" Vim syntax file
" Language:		Cystem
"


if !exists("main_syntax")
	if version < 600
		syntax clear
	elseif exists("b:current_syntax")
		finish
	endif
	let main_syntax = 'cystem'
endif

syn case match
"Start of file shell comment...
syn match 	cysLineComment "\%^\s*#.*$"
"End of line comment
syn match	cysLineComment	"\(^_\| _\|\t_\) .*$"
syn match	cysLineComment	"\(^_\| _\|\t_\) .* _$"me=e-2
syn match 	cysConst	" _$"

syn region	cysComment	start="_-" end="-_"

"Nested block comments are nesting
"syn region	cysComment	start="^\s*---\+\s*$" end="^\s*===\+\s*$"
syn region	cysComment	start="^\s*---\s*$" 	end="^\s*===\s*$"
syn region	cysComment	start="^\s*----\s*$" 	end="^\s*====\s*$"
syn region	cysComment	start="^\s*-----\s*$" 	end="^\s*=====\s*$"
syn region	cysComment	start="^\s*------\s*$" 	end="^\s*======\s*$"

syn region	cysString	start=+"+ skip=+\\\\\|\\"+ end=+"+


syn match   	cysLabel	"\a\w*\:"
syn match	cysFunction 	"\a\(\w\|\.\)*("me=e-1 "Backtrack last paren


syn match 	cysNumbers	display transparent "\d\|\.\d" contains=cysNumber,cysFloat
syn match	cysNumber	display contained "\d\+"
syn match 	cysNumber	display contained "0[xX]\x\+"		
syn match	cysFloat	display contained "\d\+\.\d*\(e[-+]\=\d\+\)\="
syn match	cysFloat	display contained "\.\d\+\(e[-+]\=\d\+\)\="
syn match	cysFloat	display contained "\d\+\(e[-+]\=\d\+\)\="



syn keyword	cysFlow		if else switch cond return with without
syn keyword	cysRepeat	while for foreach do
syn keyword 	cysConst	null true false	
syn keyword 	cysType		int real utf8 ascii void float
syn keyword 	cysType		int8 int32 uint8 uint32 double
syn keyword 	cysExternal	ModuleName ImportModule

syn match 	cysList		"(\|,\|)"



hi def link cysNumber		Number
hi def link cysFloat		Float
hi def link cysLineComment 	Comment
hi def link cysComment		Comment
hi def link cysString		String
hi def link cysLabel		Label
hi def link cysFunction		Function
hi def link cysFlow		Conditional
hi def link cysRepeat		Repeat
hi def link cysConst		Constant
hi def link cysType		Type
hi def link cysExternal		Include
hi def link cysList	  	Operator
hi def link cysSymbol		Function


let b:current_syntax = "cystem"
highlight cysComment ctermfg=blue
