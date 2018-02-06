set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

"Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set nu
set tabstop=4
set smartindent
let g:pymode_python = 'python3'

"Set leader here
let mapleader = ","

"edit vimrc or save and #TODO exit vim rc
nnoremap <leader>ev :100vsplit $MYVIMRC<cr>
nnoremap <leader>sv :wq<cr>:source $MYVIMRC<cr>
nnoremap <leader>ef :100vsplit ~/.vim_runtime/my_configs.vim<cr>

"map esc
inoremap jk <esc>

"Remove line in jedi plugin
autocmd BufRead *.py setlocal colorcolumn=0

"my feature, Mycreated function are in .vim_runtime/myscripts.vim
"i don't know but its automatically working
nnoremap <F9> :w<cr>:call ErrorWindow(expand('%:p'), expand('%:e'))<cr><cr>

"save exit 
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>qf :q!<cr>
nnoremap <leader>wq :wq<cr>

"split helper
nnoremap <leader>st :call SplitManager()<cr>

