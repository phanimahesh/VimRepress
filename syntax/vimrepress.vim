if version < 600
 syntax clear
endif

sy match blogLineComment       '^"===.*$'
sy match blogTitleLeader       '^" .*$'he=s+1 contains=blogCommentTitle
sy match blogCommentTitle      '^" \(StrID\|Title\|Slug\|Cats\|Tags\|EditType\|EditFormat\|TextAttach\)[^:]*:'hs=s+1 contained

hi link  blogLineComment       Comment
hi link  blogTitleLeader       Comment
hi link  blogCommentTitle      PreProc
