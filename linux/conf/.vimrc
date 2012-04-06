set nocp

set autoindent
set cindent
set smartindent
set ruler
set title
set tabstop=4

syntax on
set shiftwidth=4
set history=999
set pastetoggle=<Ins>

set tags+=./tags,../tags,../../tags,../../../tags

map <F5> :TlistToggle<CR>

func! Sts()
  let st = expand("<cword>")
  exe "sts ".st
endfunc

func! Tj()
  let st = expand("<cword>")
  exe "tj ".st
endfunc

nmap ,tj :call Tj()<cr>
nmap ,st :call Sts()<cr>
