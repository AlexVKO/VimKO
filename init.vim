source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/mappings.vimrc
source $HOME/.config/nvim/config/theme.vimrc

set hidden                   " hide buffers when abandoned instead of unload
set synmaxcol=1000           " Don't syntax highlight long lines
set colorcolumn=80

" Behavior
set number
set relativenumber
set nowrap
set inccommand=nosplit
" set list                " Show hidden characters
set clipboard+=unnamedplus

" Appearance
set noshowmode          " Don't show mode in cmd window
set showtabline=2       " Always show the tabs line
set scrolloff=2         " Keep at least 2 lines above/below
set sidescrolloff=5     " Keep at least 5 lines left/right
set display=lastline

" Javascript
" Pretifier configuration
autocmd FileType javascript set formatprg=prettier\ --stdin

" Tabs and Indents
set textwidth=80  " Text width maximum chars before wrapping
set expandtab     " Don't expand tabs to spaces.
set tabstop=2     " The number of spaces a tab is
set softtabstop=2 " While performing editing operations
set shiftwidth=2  " Number of spaces to use in auto(indent)
set smarttab      " Tab insert blanks according to 'shiftwidth'
set autoindent    " Use same indenting on new lines
set smartindent   " Smart autoindenting on new lines
set shiftround    " Round indent to multiple of 'shiftwidth'

" Searching {{{
set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed

" AutoClose for vim erb
let g:AutoClosePairs = { '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

" switch to relative numbers in normal mode
autocmd BufLeave * :set norelativenumber
autocmd BufEnter * :set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

