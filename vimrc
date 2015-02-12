filetype off
execute pathogen#infect()

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

syntax on
filetype on
filetype plugin indent on

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

nmap <leader>a <Esc>:Ack!
set statusline=
set statusline+=%{fugitive#statusline()}

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = "fancy"

colorscheme github
