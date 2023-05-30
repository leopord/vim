"----------------------"
"     Settings.vim     "
"----------------------"
filetype off
filetype plugin indent on
set nocompatible
set updatetime=500
set fileencodings=utf-8,gb2312,gbk,gb18030

" Colors
syntax enable           " enable syntax processing
colorscheme dracula
set background=dark     " dark color of NeoSolarized
let &t_ut=''
if has('termguicolors')
  set termguicolors     " gui true color
endif

" Spaces & Tabs
set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of visual spaces per TAB
set expandtab           " tabs are spaces
set shiftwidth=2        " number of visual spaces per Tab when reindent

" UI Config
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set number              " show line numbers
set relativenumber      " show line number relative to current line
set scrolloff=100       " number of lines above and below cursor
set autochdir           " change current working directory whenever open a file"
set wrap                " change text display
set clipboard=unnamedplus " share clipboard between vim/neovim and x window

" Search
set hlsearch            " highlight all matchs
set incsearch           " show matches while typing a search pattern
set ignorecase          " ignore case in a pattern
set smartcase           " override 'ignorecase' option if the search pattern contains upper case characters

" Window
set splitbelow          " split window bottom of current window
set splitright          " split window right of current window

" Fold
set foldenable          " enable folding
set foldmethod=indent   " fold based on indent level
set foldlevel=99        " foldlevel of line
"set foldlevelstart=3   " open most folds by default
"set foldnestmax=10      " 10 nested fold max

" Backups
silent !mkdir -p $HOME/.cache/nvim/backup
silent !mkdir -p $HOME/.cache/nvim/swap
set backup
set backupdir=$HOME/.cache/nvim/backup,.
set backupskip=/tmp/*,/var/tmp/*,/private/tmp/*
set directory=$HOME/.cache/nvim/swap,.
set writebackup

" Undo
if has('persistent-undo') || has('undo-persistent')
  silent !mkdir -p $HOME/.cache/nvim/undo
  set undofile
  set undodir=$HOME/.cache/nvim/undo,.
endif

" Move cursor to line when file is closed
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" FormatOptions
autocmd Filetype * set fo+=m fo+=M fo-=r fo-=o
