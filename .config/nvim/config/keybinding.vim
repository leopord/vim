"-----------------"
"   KeyMappings   "
"""""""""""""""""""
let mapleader=','
noremap <leader>q q

" File
map W :wall<CR>
map Q :qall<CR>
map q :bwipeout<cr>
map <leader>w :w<CR>
map <leader>wq :w<CR>:bwipeout<CR>
map <leader>r :source $HOME/.config/nvim/init.vim<CR>

" View
map <leader>vs :Startify<CR>
map <leader>vf :NERDTreeFocus<CR>
map <leader>vu :UndotreeToggle<CR>
map <leader>vt :TagbarToggle<CR>
map <leader>vm <Plug>MarkdownPreviewToggle
map <leader>vw :set wrap!<CR>
map <leader><leader> :set hlsearch!<CR>
map <leader>vj <C-W>H
map <leader>vl <C-W>L
map <leader>vi <C-W>K
map <leader>vk <C-W>J

" Window
map tj <C-W><C-H>
map ti <C-W><C-K>
map tk <C-W><C-J>
map tl <C-W><C-L>
map tn <C-W><C-W>
map tn <C-W><C-W>
map tp <C-W><C-P>
map tt <C-W>=
map tti :resize +3<CR>
map ttk :resize -3<CR>
map ttj :vertical resize +3<CR>
map ttl :vertical resize -3<CR>

" Tab
map <leader>1 <Plug>AirlineSelectTab1
map <leader>2 <Plug>AirlineSelectTab2
map <leader>3 <Plug>AirlineSelectTab3
map <leader>4 <Plug>AirlineSelectTab4
map <leader>5 <Plug>AirlineSelectTab5
map <leader>6 <Plug>AirlineSelectTab6
map <leader>7 <Plug>AirlineSelectTab7
map <leader>8 <Plug>AirlineSelectTab8
map <leader>9 <Plug>AirlineSelectTab9

" Install & Update plugins
map <leader>pi :PlugInstall<CR>
map <leader>pu :PlugUpdate<CR>
map <leader>pc :PlugClean<CR>
map <leader>pp :PlugUpgrade<CR>
map <leader>pd :PlugDiff<CR>
map <leader>ps :PlugStatus<CR>

" keybindings for plugin
for file in split(glob('$HOME/.config/nvim/config/bindings/*.vim'), '\n')
    exe 'source' file
endfor
