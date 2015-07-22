" Start with Vundle stuff

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'tpope/vim-fugitive'
Plugin 'tshirtman/vim-cython' " cython hightlight and utils
Bundle 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'coyotebush/vim-pweave'
Plugin 'vim-scripts/colorsupport.vim'
Plugin 'flazz/vim-colorschemes'


call vundle#end()            " required
filetype plugin indent on    " required
" End of Vunde Stuff

" NerdTree mapping
map <F2> :NERDTreeToggle<CR>

" Synastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " 
set statusline+=[%{strlen(&ft)?&ft:'none'}]  " filetype
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%{fugitive#statusline()}
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['python']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

autocmd FileType make setlocal noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType cpp set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType rst set tabstop=4|set shiftwidth=4|set expandtab

augroup vimrc_autocmds
    autocmd!
	" highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
	augroup END

set ts=4
set softtabstop=4 " makes the spaces feel like real tabs
set number

"let python_highlight_all=1

if has("syntax")
    syntax on
endif

set showmatch
set mouse=a

set t_Co=256
colorscheme carvedwood
