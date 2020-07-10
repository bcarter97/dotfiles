" Terminal Function
let g:term_buf = 0
let g:term_win = 0

function! TermToggle(height, gutter)
    if win_gotoid(g:term_win)
        hide
    else
        if a:gutter
            botright new
            exec "resize " . a:height
        else
            tabnew
        endif
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Toggle terminal on/off (neovim)
" This pair is for a new tab terminal
nnoremap <A-t> :call TermToggle(12, 0)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12, 0)<CR>
" This pair is for a gutter terminal
nnoremap <A-g> :call TermToggle(12, 1)<CR>
tnoremap <A-g> <C-\><C-n>:call TermToggle(12, 1)<CR>

" Escape from terminal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>
