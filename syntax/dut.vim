"------------------------------------------------------------------------------
" Vim syntax file
" Language: Dut (github.com/dut-lang/dut)
" Maintainer: Avelino <thiago@avelino.xxx>
" Last Change: 15-Aug-2016.
" Filenames: *.dut
" Version: 0.2
"------------------------------------------------------------------------------

syn case match
syn keyword sqStatement		clone delegate resume return this parent constructor
syn keyword sqStatement		vargc vargv yield class extends
syn keyword sqConditional	else if switch case default
syn keyword sqExeption		try catch throw
syn keyword sqRepeat		for while continue break
syn keyword sqOperator		in delete typeof instanceof
syn keyword sqFunction		function
syn keyword sqStorageClass	local static
syn keyword sqConstant		null
syn keyword sqBoolean		true false

" Comments
syn region sqCommentL start="\/\/" skip="\\$" end="$" keepend
syn region sqComment  start=+/\*+ end=+\*/+

" Strings
syn region sqString start=+"+ skip=+\\"+ end=+"+
syn region sqString start=+@"+ skip=+\\"+ end=+"+

" Numbers (decimal, octadecimal, hexadecimal, floating point number)
syn match sqNumberD "\<[1-9]\=\d\+\>" display
syn match sqNumberH "\<0[xX]\x\+\>" display
syn match sqNumberO "\<0\o\>" display
syn match sqFloat "\<\d[\.][e\|E]\=[\-]\=\d\+\>" display

hi def link sqStatement     Statement
hi def link sqConditional   Conditional
hi def link sqException     Exception
hi def link sqLabel         Label
hi def link sqRepeat        Repeat
hi def link sqOperator      Operator
hi def link sqFunction      Function
hi def link sqStorageClass  StorageClass
hi def link sqConstant      Constant
hi def link sqBoolean       Boolean
hi def link sqComment       Comment
hi def link sqCommentL		Comment
hi def link sqString        String
hi def link sqCharacter     Character
hi def link sqFloat         Float
hi def link sqNumberD		Number
hi def link sqNumberO		Number
hi def link sqNumberH		Number
hi def link sqKeyword		Keyword

syn sync maxlines=50
let b:current_syntax = "dut"
