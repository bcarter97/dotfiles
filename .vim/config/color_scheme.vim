" Use terminal color palette
set termguicolors
" Use dark color schemes when available
set background=dark
" Gruvbox color scheme options
let g:gruvbox_contrast_light="hard"
let g:gruvbox_italic=1
let g:gruvbox_invert_signs=0
let g:gruvbox_improved_strings=0
let g:gruvbox_improved_warnings=1
let g:gruvbox_undercurl=1
let g:gruvbox_contrast_dark="hard"
" Use gruvbox
colorscheme gruvbox
" Hide -- INSERT --
set noshowmode
" Use a complementary lightline theme for gruvbox
let g:lightline = {
\ 'colorscheme': 'wombat',
\ }
