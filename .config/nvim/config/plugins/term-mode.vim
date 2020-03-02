let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <Esc> :bwipeout<CR>
augroup TermHandling
  autocmd!
  autocmd TermOpen * setlocal listchars= nonumber norelativenumber | startinsert
augroup END
