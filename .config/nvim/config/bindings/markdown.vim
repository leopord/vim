" Markdown Toc
map mp :GenTocMarked<CR> " generate toc of markdown-preview style
map mh :GenTocGFM<CR> " generate toc of github style
map ml :GenTocGitLab<CR> " generate toc of gitlab style
map mu :UpdateToc<CR> " update toc manually

" Markdown Table Mode
map mm :TableModeToggle<CR>
map <leader>mj [|
map <leader>ml ]|
map <leader>mi {|
map <leader>mk }|
let g:table_mode_tableize_map = '<leader>mt'
let g:table_mode_delimiter = ','
let g:table_mode_tableize_d_map = '<leader>ms'
let g:table_mode_delete_row_map = '<leader>mdd'
let g:table_mode_delete_column_map = '<leader>mdc'
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction
inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
