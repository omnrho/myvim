set nu
set bg=dark
set incsearch
set hls
set tabstop=4 
set shiftwidth=4 
set mouse=nvc 
"set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)
filetype on 
filetype plugin on
au FileType c,cpp setlocal comments-=:// comments+=f://
au FileType c,cpp set expandtab 
"map <F2> :Tlist<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <F12> :!~/.vim/scripts/uptags<CR><CR>:set tags+=./tags<CR>:cs add cscope.out<CR>
nmap <C-]> g<C-]>
let mapleader = ","
"let g:ctrlp_user_command = 'find %s -name "*.c" -o -name "*.h" -o -name "*.cpp"'
let g:ctrlp_user_command = 'find %s -type f | grep -v "\.[k]*o$"'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_height = 20
"let g:ctrlp_max_files = 60000
"let g:ctrlp_working_path_mode = 'cr'
let g:ctrlp_cmd = 'CtrlP ./'
let g:ctrlp_match_func = {}
"""""""""""""""""""""""""""""""
" showmarks setting
""""""""""""""""""""""""""""""
" Enable ShowMarks
let showmarks_enable = 1
" Show which marks
let showmarks_include ="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Ignore help, quickfix, non-modifiable buffers
let showmarks_ignore_type = "hqm"
" Hilight lower & upper marks
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1 
" For showmarks plugin
hi ShowMarksHLl ctermbg=Yellow   ctermfg=Black  guibg=#FFDB72    guifg=Black
hi ShowMarksHLu ctermbg=Magenta  ctermfg=Black  guibg=#FFB3FF    guifg=Black 
""""""""""""""""""""""""""""""
" markbrowser g
""""""""""""""""""""""""""""""
nmap <silent> <leader>mb :MarksBrowser<cr> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
