set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nu
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on
set listchars=tab:>-
set list
augroup json_autocmd
 autocmd!
 autocmd FileType json set autoindent
 autocmd FileType json set formatoptions=tcq2l
 autocmd FileType json set textwidth=78 shiftwidth=2
 autocmd FileType json set softtabstop=2 tabstop=8
 autocmd FileType json set expandtab
 autocmd FileType json set foldmethod=syntax
augroup END
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'yggdroot/indentline'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'elzr/vim-json'
Plugin 'shougo/vimproc'
Plugin 'quramy/tsuquyomi'
Plugin 'davidhalter/jedi-vim'
Plugin 'mikewest/vim-markdown'



