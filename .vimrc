set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tsaleh/vim-supertab.git'
Bundle 'The-NERD-Commenter'
"Bundle 'golden-ratio'
Bundle 'kchmck/vim-coffee-script.git'
Bundle 'bronson/vim-trailing-whitespace.git'
Bundle 'vim-scripts/taglist.vim.git'
Bundle 'vim-scripts/netrw.vim.git'
Bundle 'vim-scripts/twilight256.vim.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'TinyBufferExplorer'
Bundle 'slimv.vim'
Bundle 'Railscasts-Theme-GUIand256color'
Bundle 'bbommarito/vim-slim.git'

filetype plugin indent on     " required!

set nocp
syntax on
set cursorline
set t_Co=256
set cursorline
set number
set numberwidth=3
set noeb
set novb
set incsearch
set ignorecase
set smartcase
set shiftwidth=2
nmap <s-f> mngg=G`n
nmap <c-e> :e .<cr>
nmap <s-e> :FufBuffer <cr>
nmap \s :%s/\<<c-r>=expand("<cword>")<cr>\>/

nmap cd :cd %:h<cr>
set tags+=gems.tags
set tags+=tags
if filereadable('.localvim')
so .localvim
endif
command! -nargs=+ G execute 'silent grep! <args>' | copen 42
"colorscheme twilight256
colorscheme railscasts
map \t :!bundle exec rspec --drb %<cr>
