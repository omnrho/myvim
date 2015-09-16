set nu
set bg=dark
set incsearch
set hls
set tabstop=4 
set shiftwidth=4 
filetype on 
filetype plugin on
au FileType c,cpp setlocal comments-=:// comments+=f://
au FileType c,cpp set expandtab 
"map <F2> :Tlist<CR>
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>
nmap <C-]> g<C-]>
nmap <F4> :CtrlP ./<CR>
let mapleader = ","
let g:ctrlp_user_command = 'find %s -name "*.c" -o -name "*.h" -o -name "*.cpp"'
let g:ctrlp_working_path_mode = 'rw'
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
" markbrowser setting
""""""""""""""""""""""""""""""
nmap <silent> <leader>mk :MarksBrowser<cr> 
