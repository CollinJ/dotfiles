version 6.0
execute pathogen#infect()
let mapleader = ","
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
syntax on
set background=dark
colorscheme solarized
filetype plugin indent on
cmap w!! w !sudo tee > /dev/null %
"Set Variables
set autoindent
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatoptions=qrn1
set gdefault
set helplang=en
set hidden
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬
set modelines=0
set nocompatible
set printoptions=paper:letter
set relativenumber
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=3
set shiftwidth=2
set showcmd
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=2
set ttyfast
set undofile
set visualbell
set wildmenu
set wildmode=list:longest
" Remaps
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
vnoremap <leader>c :<,'>s/^/#/
nnoremap ; :
nnoremap <leader>v V`]
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>p V!python
nnoremap <space> za
function Ctrl_Space()
    if pumvisible()
        return "\<C-n>"
    else
        return "\<C-x>\<C-o>"
    endif
endfunction
inoremap <expr> <Nul> Ctrl_Space()
nnoremap <silent> <F8> :TlistToggle<CR>
"Window Handlers
au FocusLost * :wa
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
"Tab Completion
function! Smart_TabComplete()
    let line = getlin('.')
    let substr = strpart(line, -1, col('.')+1)
    let substr = matchstr(substr, "[^ \t]*$")
    if (strlen(substr)==0
        return
    endif
    let has_period = match(substr, '\.') != -1
    let has_slash = match(substr, '\/') != -1
    if (!has_period && !has_slash)
        return "\<C-X>\<C-P>"
    elseif ( has_slash )
        return "\<C-X>\<C-F>"
    else
        return "\<C-X>\<C-O>"
    endif
endfunction
