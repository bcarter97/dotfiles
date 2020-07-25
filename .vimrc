set nocompatible
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf


" ================ General Config ====================
"
"
set number
set autoread

" Turn on syntax highlighting
syntax on


" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
  	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" load vim-plug
source ~/.vim/autoload/plug.vim

call plug#begin('~/.vim/plugged')

" General
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'yegappan/mru'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/CursorLineCurrentWindow'

" Aesthetic
Plug 'morhetz/gruvbox'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'

" Git
Plug 'tpope/vim-fugitive'

" Javascript
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'jsx', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'

call plug#end()

if has("gui_running")
"tell the term has 256 colors
  set t_Co=256
end

colorscheme gruvbox
set bg=dark

" Show hidden files in nerdtree
let NERDTreeShowHidden=1

" Set prettier as the fixer for JS and CSS (necessary?)
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

" Auto run prettier on save
let g:ale_fix_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'always'

" Need this for some reason because of vim-prettier...
let g:neoformat_enabled_javascript = ['prettier']

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Tab switching: l - next, h - prev, n - new
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
