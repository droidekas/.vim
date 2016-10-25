execute pathogen#infect()
filetype on
syntax on
colorscheme Tomorrow-Night
set guifont=Hack\ Regular:h18

set colorcolumn=90
set number
let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
set hidden
set history=100
"
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e

set hlsearch
"nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
nnoremap <Leader><Leader> :e#<CR>
set showmatch
set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>
let NERDTreeMapActivateNode='<right>'
"
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
autocmd VimEnter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
