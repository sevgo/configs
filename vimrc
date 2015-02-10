filetype off
call pathogen#infect()
call pathogen#helptags()

set foldmethod=indent
set foldlevel=99

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
        sys.path.insert(0, project_base_dir)
            activate_this = os.path.join(project_base_dir,
            'bin/activate_this.py')
                execfile(activate_this, dict(__file__=activate_this))
                EOF
