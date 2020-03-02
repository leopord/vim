let g:airline_theme='wombat'
let g:airline_powerline_fonts=1

"--- Tabline ---"
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#overflow_marker = '...'
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'
let g:airline#extensions#tabline#tabs_label= 't'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffers_label= 'b'
let g:airline#extensions#tabline#buf_label_first = 1

"--- coc.nvim ---"
let g:airline#extensions#coc#enabled = 1
let airline#extensions#coc#error_symbol = 'Err:'
let airline#extensions#coc#warning_symbol = 'Warn:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

"--- tagbar ---"
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'

"--- fugitive ---"
let g:airline#extensions#fugitiveline#enabled = 1

"--- hunks ---"
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 0

"--- keymap ---"
let g:airline#extensions#keymap#enabled = 1

"--- quickfix ---"
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'
let g:airline#extensions#quickfix#location_text = 'Location'

"--- nerdtree ---"
let g:airline#extensions#nerdtree_status = 1

"--- detect ---"
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_detect_spelllang=1
let g:airline_highlighting_cache=0
