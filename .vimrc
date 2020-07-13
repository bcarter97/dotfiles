set nocompatible

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
  	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" load vim-plug
source ~/.vim/autoload/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'superfunc/usda-syntax'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'kbenzie/vim-spirv'
Plug 'chrisbra/csv.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim'
Plug 'sbdchd/neoformat'
call plug#end()

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf

:set number
:set shiftwidth=2
:set autoindent
:set smartindent

let NERDTreeShowHidden=1

" Prettier autoformatting for react

let g:neoformat_try_formatprg = 1
let g:neoformat_enabled_javascript = ['prettier']

augroup NeoformatAutoFormat
    autocmd!
    autocmd FileType javascript,javascriptreact setlocal formatprg=prettier\
                                             \--stdin\
                                             \--print-width\ 80\
                                             \--tab-width\ 2\
                                             \--single-quote\
                                             \--semi\
                                             \--trailing-comma\ es5
    autocmd BufWritePre *.js,*.jsx Neoformat
augroup END

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
