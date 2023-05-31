" trigger, navigate
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ check_backspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
function! s:check_backspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
imap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#pum#on_enter()\<CR>"

" Use <C-p> to refresh completion
inoremap <C-p> <nop>
inoremap <silent><expr> <C-p> coc#refresh()

" autocmd group
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Map function and class text object
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ic <Plug>(coc-classobj-i)
omap ac <Plug>(coc-classobj-a)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming
nmap <leader>kr <Plug>(coc-rename)


xmap <leader>kf <Plug>(coc-format-selected)
nmap <leader>kf <Plug>(coc-format-selected)
xmap <leader>kF :Format<CR>
nmap <leader>kF :Format<CR>

" Mappings for CoCList
" Show all diagnostics
noremap <silent> <leader>ka :<C-u>CocList diagnostics<CR>
noremap <silent> <leader>ke :<C-u>CocList extensions<CR>
noremap <silent> <leader>kc :<C-u>CocList commands<CR>
noremap <silent> <leader>ko :<C-u>CocList outline<CR>
noremap <silent> <leader>ks :<C-u>CocList -I symbols<CR>
noremap <silent> <leader>kp :<C-u>CocListResume<CR>
noremap <silent> <C-j> :<C-u>CocNext<CR>
noremap <silent> <C-k> :<C-u>CocPrev<CR>

" Use K to show documentation in preview window
noremap <silent> K :call show_documentation()<CR>
function! s:show_documentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')