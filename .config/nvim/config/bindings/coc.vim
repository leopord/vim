" trigger, navigate, select completion
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <C-p> <nop>
inoremap <silent><expr> <C-p> coc#refresh()
imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" autocmd group
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
command! -nargs=0 Format :call CocAction('format')

" Text object
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>kr <Plug>(coc-rename)
xmap <leader>kf <Plug>(coc-format-selected)
nmap <leader>kf <Plug>(coc-format-selected)
xmap <leader>kF :Format<CR>
nmap <leader>kF :Format<CR>
noremap <silent> <leader>ka :<C-u>CocList diagnostics<cr>
noremap <silent> <leader>ke :<C-u>CocList extensions<cr>
noremap <silent> <leader>kc :<C-u>CocList commands<cr>
noremap <silent> <leader>ko :<C-u>CocList outline<cr>
noremap <silent> <leader>ks :<C-u>CocList -I symbols<cr>
noremap <silent> <leader>kp :<C-u>CocListResume<CR>
noremap <silent> <C-j> :<C-u>CocNext<CR>
noremap <silent> <C-k> :<C-u>CocPrev<CR>
noremap <silent> K :call <SID>show_documentation()<CR>
noremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
