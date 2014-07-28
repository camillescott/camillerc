autocmd FileType make setlocal noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType rst set tabstop=4|set shiftwidth=4|set expandtab
set softtabstop=4 " makes the spaces feel like real tabs
set number

if has("syntax")
    syntax on
endif

set showmatch
set mouse=a
