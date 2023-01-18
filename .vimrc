set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on

set number

" set cursorline

" set cursorcolumn

set shiftwidth=4

set tabstop=4

set expandtab

set nobackup

set scrolloff=10

set nowrap

set incsearch

set smartcase

set showcmd

set showmode

set hlsearch

set history=100

set wildmenu

set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*img,*.xlsx

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

call plug#begin('~/.vim/plugged')

"{{ Configuring NerdTree
Plug 'preservim/nerdtree'
   
    " ---> to hide unwanted files <---
  let NERDTreeIgnore = [ '__pycache__', '\.pyc$', '\.o$', '\.swp',  '*\.swp',  'node_modules/' ]
    " ---> show hidden files <---
  let NERDTreeShowHidden=1
    " ---> autostart nerd-tree when you start vim <---
  set rtp+=~/.vim/plugged/nerdtree
  autocmd VimEnter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:stdn_in") | NERDTree | endif
    " ---> toggling nerd-tree using Ctrl-N <---
  map <C-n> :NERDTreeToggle<CR>
"}}

"{{ Configuring YouCompleteMe
" .., {'do', './install.py'}
""Plug 'valloric/youcompleteme'

  " ---> youcompleteme configuration <---
""  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

  " ---> compatibility with another plugin (ultisnips) <---
""  let g:ycm_key_list_select_completion = [ '<C-n>', '<Down>' ]
""  let g:ycm_key_list_previous_completion = [ '<C-p>', '<Up>' ]
""  let g:SuperTabDefaultCompletionType = '<C-n>'
" ---> disable preview window <---
"  set completeopt-=preview
" ---> navigating to the definition of a a symbol <---
""map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"}}

Plug 'ryanoasis/vim-devicons'
    set encoding=utf8
call plug#end()
