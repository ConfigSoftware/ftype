if exists("g:loaded_ftype")
    finish
endif
let g:loaded_ftype = 1

set expandtab
set smarttab
set shiftround
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

function! s:Tab_length(num)
    let &l:tabstop=a:num
    let &l:softtabstop=a:num
    let &l:shiftwidth=a:num
endfunction

autocmd FileType javascript,html,css,xml call <SID>Tab_length(2)
