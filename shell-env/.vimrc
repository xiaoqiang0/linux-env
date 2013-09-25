set autoindent
set cindent shiftwidth=4
set softtabstop=4
set expandtab
set incsearch 
set showmatch 
set hlsearch
highlight Comment ctermfg=darkcyan
set showmode
set laststatus=1
set nolist
set noignorecase
set syntax=on
"let Tlist_Use_Right_Window=1
"let Tlist_File_Fold_Auto_Close=1
nmap <F3>: 3ggwwwdwdwdwdwi
nmap <F4>: 6ggddddddO
"map <F5> :call Search_Word()<CR>
"inoremap <F8> <C-x><C-o>
"map <F9> :close<CR>
"set updatetime=100
if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
" else add database pointed to by environment
elseif $CSCOPE_DB != ""
cs add $CSCOPE_DB
endif
set csverb
set cscopetag
set cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif
"tags=./tags,./../tags,./../../tags,./*/tags
set cscopequickfix=s-,c-,d-,i-,t-,e-
"查找本 C 符号(可以跳过注释)
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
"查找本定义
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"查找本函数调用的函数
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"查找调用本函数的函数
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"查找本字符串
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"查找本 egrep 模式
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"查找本文件
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"查找包含本文件的文件
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
autocmd BufReadPost *
                        \ if line("'\"")>0&&line("'\"")<=line("$") |
                        \       exe "normal g'\"" |
                        \ endif
