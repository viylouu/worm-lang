syn keyword wormType i1 i2 i4 i8 u1 u2 u4 u8 f2 f4 f8 str chr b1 b2 b4 b8 st lc

syn match wormAt "@?\{0,1\}"
syn match wormAnd "&"
syn match wormGrabValueAsName "&[a-zA-Z]\+" contains=wormAnd

syn match wormOperators "\v\+|\-|\*|\/|\%{1,2}|>{2}|<{2}|\^{2}|\!|\||\?|:"

syn match wormComparisons "\v\={2}|\!\=|<|>|\=>|\=<"

syn match wormFolderNameAtIndexed "[a-zA-Z]\+@?\{0,1\}" contains=wormAt
syn match wormStateAtPath "@?\{0,1\}[a-zA-Z]\+[a-zA-Z0-9]*" contains=wormAt

syn match wormOps "\v:\<|\<:|\>:|:\=|\!{0,1}\-\>\<{0,1}|\<\=|\^|\;" 

syn match wormComment "\~\~.*"
syn region wormMultilineComment start="\~{" end="}\~" contains=NONE,@Spell keepend

syn region wormString start="\"" end="\""

syn region wormString start=+"+ skip=+\\\\\|\\"+ end=+"+ keepend contains=NONE

syn match wormState "|\~" contained
syn match wormFolder "|-" contained
syn match wormStateName "|\~[a-zA-Z]\+[a-zA-Z0-9]*" contains=wormState
syn match wormFolderName "|\-[a-zA-Z]\+[a-zA-Z0-9]*" contains=wormFolder

syn match wormPath "@>[\~._a-zA-Z0-9\/]*" contains=wormPather
syn match wormNull "_"
syn match wormPather "@>" contained

syn match wormParameter "\v\$[a-zA-Z]+[a-zA-Z0-9]*"

syn match wormVariables "[a-zA-Z0-9]\+"

syn match wormNumberConstants "[0-9]"

syn match wormDelimiter "[(){}]"

hi link wormComment             Comment
hi link wormMultilineComment    Comment
hi link wormPath                Directory
hi link wormPather              Statement
hi link wormState               Statement
hi link wormFolder              Statement
hi link wormStateName           Constant
hi link wormFolderName          Directory
hi link wormType                Type
hi link wormOperators           Operator
hi link wormOps                 Special
hi link wormAt                  Special
hi link wormComparisons         Operator
hi link wormNumberConstants     Number
hi link wormParameter           Identifier
hi link wormDelimiter           Delimiter
hi link wormString              String
hi link wormStateAtPath         Keyword
hi link wormAnd                 Operator
hi link wormGrabValueAsName     Constant
hi link wormFolderNameAtIndexed Directory
hi link wormNull                Constant
