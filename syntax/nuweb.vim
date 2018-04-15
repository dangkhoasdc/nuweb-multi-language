" Vim syntax file
" Language:	NUWEB
" Maintainer:	Ahmed Fasih <fasih.1@osu.edu>, Patricio Toledo Pe~na <!-- <patoledo@ing.uchile.cl> -->
" Last Change:  2017-08-26 02:00
" Obs:		WEB/CWEB files uses .w, so i decide to use .nw as
"		identificator

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"
if exists("b:current_syntax")
  finish
endif

unlet! b:current_syntax
runtime! syntax/tex.vim
runtime! after/syntax/tex.vim

unlet b:current_syntax
syntax include @CPP syntax/cpp.vim
syntax include @CPP syntax/doxygen.vim
try
  syntax include @CPP after/syntax/cpp.vim
catch
endtry

syntax cluster texFoldGroup add=texZoneCpp
syntax region texZoneCpp matchgroup=SpecialComment
      \ start="@{"rs=s
      \ end="@}"re=e
      \ keepend
      \ transparent
      \ contains=@CPP,nuwebScrap

" Try to flag Scrap mismatches
syntax cluster texFoldGroup add=nuwebFiles,nuwebMacro,
        \ nuwebScrap,nuwebParameter,nuwebComment

" Highlight Scrap and Macros --> @o filename, 'til end of line
syn region  nuwebFiles start="@\c\(o\|i\)\s\=" end="$"
syn region  nuwebMacro start="@\c\(d\|f\|m\|u\)\s\=" end="$"

" Highlight other Scrap
syn match   nuwebScrap	   "@\(<\|>\)\+"
syn match   nuwebScrap	   "@\([\|]\)\+"
syn match   nuwebScrap	   "@\((\|)\)\+"

syn match   nuwebParameter "@\d\+"

" Coments inside Scrap
syn match   nuwebComment   "@%.*$"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi def link  nuwebFiles	    Type
hi def link  nuwebMacro	    Type
hi def link  nuwebScrap	    Identifier
hi def link  nuwebParameter Identifier
hi def link  nuwebComment    Comment
hi def link  nuwebError	    Error

" For starters, read the TeX syntax; TeX syntax items are allowed at the top
" level in the NUWEB syntax, e.g., in the preamble.  In general, a NUWEB source
" code can be seen as a normal TeX document with some other material
" interspersed in certain defined regions.
"
let b:current_syntax = "nuweb"
