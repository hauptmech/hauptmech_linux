augroup filetype
	au!
	au! BufRead,BufNewFile *.cys	set filetype=cys
	au! BufRead,BufNewFile *.peg	set filetype=peg
	au! BufRead,BufNewFile *.td	set filetype=tablegen
	au! BufRead,BufNewFile *.ll	set filetype=llvm
      
augroup END

