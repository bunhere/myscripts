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

set pastetoggle=<F2>

" Open and close all the three plugins on the same time
nmap <F5>   :TrinityToggleAll<CR>

" Open and close the srcexpl.vim separately
nmap <F6>   :TrinityToggleSourceExplorer<CR>

" Open and close the taglist.vim separately
nmap <F7>  :TrinityToggleTagList<CR>

" Open and close the NERD_tree.vim separately
nmap <F8>  :TrinityToggleNERDTree<CR> 
