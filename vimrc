"
"" vim - Frederico Sales
"

"-----------------------------------------------------------------------------"

" plug
" source $HOME/.config/vim/vim-plug/plugins.vim

"-----------------------------------------------------------------------------"

" standart
set encoding=UTF-8
set nocompatible
syntax enable
set confirm
set number relativenumber
set shiftwidth=4
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set hls is
set ic
set mouse=v
set path=.,/usr/include,,
set path+=**
set nowrap
set ruler
set timeoutlen=500
set showmatch
set incsearch
set autowrite
autocmd BufWritePre * %s/\s\+$//e
runtime! debian.vim
set showcmd
syntax on
set background=dark
set clipboard+=unnamedplus
set noswapfile
set tw=80
set fo+=t

"-----------------------------------------------------------------------------"

" python
let g:python_host_prog="/usr/bin/python2"
let g:python3_host_prog="/usr/bin/python3"
nnoremap <F5> <esc>  :w<cr> :echo system('python2 "' . expand('%') . '"')<cr>
nnoremap <F5> <esc>  :w<cr> :echo system('python3 "' . expand('%') . '"')<cr>

"-----------------------------------------------------------------------------"

" spell
map <F8> :setlocal spell spelllang=pt_br<cr>
map <F9> :setlocal spell spelllang=en_us<cr>

"-----------------------------------------------------------------------------"

" select all
map <c-a> ggvG$
imap <c-a> ggvG$

"-----------------------------------------------------------------------------"

" Remove trailling
map <c-z> :%s/\s\+$//e<cr>
imap <c-z> :%s/\s\+$//e<cr>

"-----------------------------------------------------------------------------"

" theme
"
" colorscheme dracula
hi Nontext ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
let g:airline_powerline_fonts=1

"-----------------------------------------------------------------------------"

" vimtex
" let g:vimtex_compiler_progame='latexmk' . ' -pdf -shell-escape -silent -gg '
" let g:vimtex_view_general_viewer='zathura'
" let g:vimtex_cursorhold_recompile=0

"-----------------------------------------------------------------------------"

" git
nmap <space>gb :Gblame<cr>
nmap <space>gs :Git<cr>
nmap <space>gc :Gcommit -v<cr>
nmap <space>ga :Git add -p<cr>
nmap <space>gm :Gcommit --amend<cr>
nmap <space>gp :Gpush<cr>
nmap <space>gd :Gdiff<cr>
nmap <space>gw :Gwrite<cr>

"-----------------------------------------------------------------------------"

" Pydoc3
nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

"-----------------------------------------------------------------------------"

" todo.txt
" let maplocalleader="<yourKey>"

"-----------------------------------------------------------------------------"

" Format json
function! FormatJSON()
    :%!python3 -m json.tool
endfunction

nmap <space>j :call FormatJSON()<CR>

"-----------------------------------------------------------------------------"

" Format lua code
" autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<cr>
" autocmd BufWrite *.lua call LuaFormat()

"-----------------------------------------------------------------------------"
"-----------------------------------------------------------------------------"
"-----------------------------------------------------------------------------"
"-----------------------------------------------------------------------------"
"-----------------------------------------------------------------------------"
"-----------------------------------------------------------------------------"
