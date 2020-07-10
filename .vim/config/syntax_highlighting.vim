" Better template syntax highlighting
let g:cpp_experimental_template_highlight = 1

" Enable rainbow parentheses
augroup RAINBOW_PARENTHESES
	au VimEnter * RainbowParenthesesActivate
	" Round disabled for CMakeLists.txt support...
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadSquare
	au Syntax * RainbowParenthesesLoadBraces
augroup END
" au Syntax * RainbowParenthesesLoadChevrons
" Max depth for the Rainbow Parentheses
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Enable CUDA syntax highlighting
augroup CUDA_SYNTAX
	au!
	au BufNewFile,BufRead *.cu set ft=cuda
	au BufNewFile,BufRead *.cuh set ft=cuda
augroup END
"
" Enable RUST syntax highlighting
augroup RUST_SYNTAX
	au!
	au BufNewFile,BufRead *.rs set ft=rust
augroup END

" Enable USD syntax highlighting
augroup USDA_SYNTAX
	au!
	au BufRead,BufNewFile *.usd set ft=usda
	au BufRead,BufNewFile *.usda set ft=usda
	" Load the syntax file
	autocmd FileType usda source ~/.vim/bundle/usda-syntax/vim/usda.vim
augroup END

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END
