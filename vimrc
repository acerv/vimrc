" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" set colorscheme
colorscheme peachpuff

" auto indentation for previous line
set autoindent

" intelligent indentation for C
set smartindent

" tab width
set tabstop=4
set shiftwidth=4
set expandtab

" wrap lines at 120 char since monitors are bigger nowadays
set textwidth=120

" syntax highlight on
set t_Co=256
syntax on

" line number on
set number

" highlight matching braces
set showmatch

" always show last status bar
set laststatus=2

" switch between tabs
map H gT
map L gt

" switch between source/header with F4
map <F4> :e %:p:s,.h$,.X123X,:s,.c$,.h,:s,.X123X$,.c,<CR>

" compile options
map <F5> :make<CR>
map <F6> :make clean<CR>
map <F7> <C-]>

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Load pathogen plugins
execute pathogen#infect()

" vim-airline plugin setup
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" tagbar plugin setup
nmap <F8> :TagbarToggle<CR>
let g:tagbar_usearrows = 1

" open the explorer with F7
nmap <F9> :Texplore<CR>

" color all columns after #80 line
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

