" === General ===
"colorscheme desert
set history=100
set number
filetype on
syntax on

set background=dark 
if has('termguicolors')
	set termguicolors
endif
"let g:everforest_background = 'hard' "'medium'=default 
let g:everforest_better_performance = 1 
packadd! everforest 
colorscheme everforest

" === Coding ===
" auto indent code
set autoindent  
" show matching (), [], & {}
set showmatch  	
" toggle line numbers
nnoremap Zn :set invnumber<CR>

" === Tabs ===
" tab visually appears as 2 spaces
set tabstop=2
" shift by tab size (2 spaces)
set shiftwidth=2

" === Searching ===
" starts searching incrementally
set incsearch
" highlight while searching
set hlsearch

" === Command Line  ===
" tab completion for command line
set wildmenu
" longest display
set wildmode=list:longest

" === C++ ===
" auto-bracket
"inoremap { {<CR>}<Esc>ko  
inoremap { {}<Esc>ha
" default for loop
nnoremap Zf ifor (int i = 0; i < N; i++)<Esc>
" int pair
nnoremap Zp ipair<int, int><Esc>

" === Python ===
" main
nnoremap Zm iif __name__ == '__main__':<CR><esc>
" input
nnoremap Zi imap(int, input().split())

