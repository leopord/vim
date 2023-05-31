"----------------------"
"    Plugin-Manager    "
"----------------------"
call plug#begin('~/.config/nvim/plugged')
" UI
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline' " status line
Plug 'vim-airline/vim-airline-themes' " status line themes
Plug 'mhinz/vim-startify' " shows recently used files, bookmarks, commands and sessions

" View
Plug 'preservim/nerdtree', { 'on' : ['NERDTreeToggle', 'NERDTreeFocus'] } " file system explorer
Plug 'mbbill/undotree', { 'on' : 'UndotreeToggle' } " undo history tree
Plug 'majutsushi/tagbar', { 'on' : 'TagbarToggle' } " browse tags of current file and get overview of structure
Plug 'lvht/tagbar-markdown', { 'for': 'markdown' } " tagbar extension for markdown

" Edit
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs
Plug 'preservim/nerdcommenter' " comment functions
Plug 'jiangmiao/auto-pairs' " Insert or delete brackets, parens, quotes in pair
Plug 'Lokaltog/vim-easymotion' "simpler way to use some motions
Plug 'svermeulen/vim-subversive' " operator motions to quickly replace text
Plug 'terryma/vim-multiple-cursors'  " multiple selections
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " use fzf on vim/nvim
Plug 'junegunn/fzf.vim' " use fzf on vim/nvim

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } , 'for' :['markdown', 'vim-plug'] } " Preview markdown on your modern browser
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': 'markdown' } " automatic table creator & formatter
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown'] } " generate table of contents for Markdown

" Development
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " intellisense engine for Vim/Neovim, language server protocol support
Plug 'airblade/vim-gitgutter' " show git diff in the 'gutter' (sign column)
Plug 'tpope/vim-fugitive' " best Git wrapper
Plug 'ap/vim-css-color' " context-sensitive color name highlighter
Plug 'elzr/vim-json' " json pretty
Plug 'pangloss/vim-javascript', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] } " javascript syntax colors
Plug 'othree/html5.vim', { 'for' : [ 'html', 'php' ] } " HTML5 syntax
Plug 'honza/vim-snippets' " default snippets
Plug 'nelsyeung/twig.vim', { 'for': ['twig'] }

" Tex & LaTeX
"Plug 'lervag/vimtex', { 'for': ['tex', 'latex'] }

" Org Mode
"Plug 'jceb/vim-orgmode'

call plug#end()
