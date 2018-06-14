call plug#begin()

" Themes
Plug 'rakr/vim-one'

" Syntax
Plug 'sheerun/vim-polyglot'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
source $HOME/.config/nvim/config/plugins/fzf.vimrc

" Autopairs
Plug 'jiangmiao/auto-pairs'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Highlight
Plug 'itchyny/vim-cursorword'

" Autocomplete
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

" Tmux tabs integration
Plug 'christoomey/vim-tmux-navigator'

" Sidebar
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'ryanoasis/vim-devicons',{ 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
  autocmd! User nerdtree exe 'source' '$HOME/.config/nvim/config/plugins/nerdtree.vim'

" Miscellaneous
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular',{  'on': 'Tabularize'}
Plug 'tpope/vim-commentary'
Plug 'brooth/far.vim',{  'on': ['Far',  'Farp',  'F'] }
Plug 'dhruvasagar/vim-zoom'
Plug 'tpope/vim-repeat'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'xolox/vim-easytags'
  let g:easytags_always_enabled = 1

Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/goyo.vim'
  let g:goyo_height='95%'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin',{  'on': ['NERDTreeToggle', 'NERDTreeFind'] }

" Notes
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" Text Objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'lucapette/vim-textobj-underscore'
Plug 'rhysd/vim-textobj-ruby'
Plug 'kana/vim-textobj-indent'
" Plug 'kana/vim-textobj-function'
Plug 'thinca/vim-textobj-function-javascript'
", { 'for': 'javascript' }
Plug 'inside/vim-textobj-jsxattr'
Plug 'whatyouhide/vim-textobj-erb'

Plug 'tpope/vim-surround'
  let g:surround_35  = "#{\r}"    " #
  let g:surround_45 = "<% \r %>"  " -
  let g:surround_61 = "<%= \r %>" " =

Plug 'MattesGroeger/vim-bookmarks'

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
Plug 'tpope/vim-endwise', { 'for': 'ruby' }
" Plug 'uplus/deoplete-solargraph', { 'for': 'ruby' }
Plug 'janko-m/vim-test'
  let g:strip_whitespace_on_save = 1

" Elixir
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

" Python
Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" HTML
Plug 'mattn/emmet-vim'

call plug#end()
