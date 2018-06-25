call plug#begin()

" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
" Insert and delete brakets, parens, quotes.
Plug 'jiangmiao/auto-pairs'

" Languages packs
Plug 'sheerun/vim-polyglot'

" Tmux tabs integration
Plug 'christoomey/vim-tmux-navigator'

" Highligh cursor word
Plug 'itchyny/vim-cursorword'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Alig code
Plug 'godlygeek/tabular',{  'on': 'Tabularize'}

" Comments
Plug 'tpope/vim-commentary'

" Find and Replace
Plug 'brooth/far.vim',{  'on': ['Far',  'Farp',  'F'] }

" Allow repeat to work with plugins
Plug 'tpope/vim-repeat'

" Visual indentation
Plug 'Yggdroot/indentLine'

" Nice starup
Plug 'mhinz/vim-startify'

" Highligh empty space and auto remove it
Plug 'ntpeters/vim-better-whitespace'

" Better motion
Plug 'easymotion/vim-easymotion'

" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" -----------------------------------------------------------------------------
" Theme
" -----------------------------------------------------------------------------
Plug 'rakr/vim-one'

" -----------------------------------------------------------------------------
" Fuzzy finder
" -----------------------------------------------------------------------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
source $HOME/.config/nvim/config/plugins/fzf.vimrc

" -----------------------------------------------------------------------------
" Sidebar
" -----------------------------------------------------------------------------
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'ryanoasis/vim-devicons',{ 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
  autocmd! User nerdtree exe 'source' '$HOME/.config/nvim/config/plugins/nerdtree.vim'

" -----------------------------------------------------------------------------
" Airline
" -----------------------------------------------------------------------------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" -----------------------------------------------------------------------------
" Autocomplete and Snippets
" -----------------------------------------------------------------------------
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  let g:python3_host_prog = '/usr/bin/python3'
  autocmd! User deoplete call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

Plug 'SirVer/ultisnips'
  let g:UltiSnipsEditSplit="vertical"

Plug 'honza/vim-snippets'
Plug 'wellle/tmux-complete.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'ervandew/supertab'

" -----------------------------------------------------------------------------
" Text Objects
" -----------------------------------------------------------------------------
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'lucapette/vim-textobj-underscore'
Plug 'rhysd/vim-textobj-ruby'
Plug 'kana/vim-textobj-indent'
Plug 'thinca/vim-textobj-function-javascript'
Plug 'inside/vim-textobj-jsxattr'
Plug 'whatyouhide/vim-textobj-erb'
" Plug 'kana/vim-textobj-function'

Plug 'tpope/vim-surround'
  let g:surround_35  = "#{\r}"    " #
  let g:surround_45 = "<% \r %>"  " -
  let g:surround_61 = "<%= \r %>" " =

" -----------------------------------------------------------------------------
" Ctags
" -----------------------------------------------------------------------------
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
  let g:easytags_always_enabled = 1

Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/goyo.vim'
  let g:goyo_height='95%'
  let g:goyo_width='120'
  autocmd! User GoyoLeave nested exec ':so ~/.config/nvim/init.vim'

" -----------------------------------------------------------------------------
" Git
" -----------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin',{  'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'jreybert/vimagit'

" -----------------------------------------------------------------------------
" Ruby
" -----------------------------------------------------------------------------
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
" Plug 'uplus/deoplete-solargraph', { 'for': 'ruby' }
Plug 'janko-m/vim-test'
  let g:strip_whitespace_on_save = 1

" -----------------------------------------------------------------------------
" Elixir
" -----------------------------------------------------------------------------
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

" -----------------------------------------------------------------------------
" Python
" -----------------------------------------------------------------------------
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" -----------------------------------------------------------------------------
" HTML
" -----------------------------------------------------------------------------
Plug 'mattn/emmet-vim'

" -----------------------------------------------------------------------------
" Ansible
" -----------------------------------------------------------------------------
Plug 'pearofducks/ansible-vim'

call plug#end()
