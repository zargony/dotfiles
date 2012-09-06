syntax on
set background=dark
colorscheme elflord
set showcmd showmatch
set nowrap
set ignorecase smartcase hlsearch

" use 2-space indentation without any tabs
"set expandtab softtabstop=2
"set smarttab shiftwidth=2

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif

"au BufNewFile,BufRead *.erb set syntax=eruby
"au BufNewFile,BufRead *.builder set syntax=ruby
au! BufRead,BufNewFile *.erb setfiletype eruby
au! BufRead,BufNewFile *.builder setfiletype ruby
au! BufRead,BufNewFile *.haml setfiletype haml
au! BufRead,BufNewFile *.scss setfiletype css
