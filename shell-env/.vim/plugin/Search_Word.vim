func Search_Word()
let w = expand("<cword>")
exe "vimgrep" w	".c .h"
exe 'copen'
endfun
