autocmd User Startified setlocal cursorline
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ ]
let g:startify_update_oldfiles = 1
let g:startify_change_to_dir = 1
let g:startify_enable_special = 1
let g:startify_custom_header = [ ]
let g:startify_files_number = 5
