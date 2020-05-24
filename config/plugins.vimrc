"automated installation of vimplug if not installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin()

" -----------------------------------------------------------------------------
" Quick Jumps
" -----------------------------------------------------------------------------
  " Lightning fast left-right movement in Vim
  Plug 'unblevable/quick-scope'

  " Better motion
  Plug 'justinmk/vim-sneak'
  let g:sneak#label = 1

  " Fuzzy finder for lines in the current file
  Plug 'ripxorip/aerojump.nvim', { 'do': ':UpdateRemotePlugins' }

" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
  " Insert and delete brakets, parens, quotes.
  Plug 'jiangmiao/auto-pairs'

  " Rainbow Parentheses
  Plug 'luochen1990/rainbow'
    let g:rainbow_active = 0

  " Smooth scrolling
  Plug 'yuttie/comfortable-motion.vim'

  Plug 'drzel/vim-line-no-indicator'

  " granular project configuration using projections
  Plug 'tpope/vim-projectionist'
    source $HOME/.config/nvim/config/plugins/projectionist.vimrc

  " A solid language pack for Vim.
  Plug 'sheerun/vim-polyglot'

  " Vim plugin that shows keybindings in popup
  Plug 'leoatchina/vim-which-key'

  " Mapping manager
  Plug 'AlexVKO/vim-mapping-manager', { 'do' : ':UpdateRemotePlugins' }

  " Edit selected code in new buffer
  Plug 'chrisbra/NrrwRgn'
    let g:nrrw_rgn_write_on_sync = 1

  Plug 'tpope/vim-unimpaired'

  " Grammar Checker
  Plug 'rhysd/vim-grammarous'

  " Highligh the cursor word
  Plug 't9md/vim-quickhl'

  " Tmux tabs integration
  Plug 'christoomey/vim-tmux-navigator'

  Plug 'wellle/context.vim'
    let g:context_enabled = 0

  " Send commands to other tmux tabs from vim
  Plug 'benmills/vimux'
    let g:VimuxOrientation = "h"
    let g:VimuxHeight = "40"
    let g:VimuxPromptString = "> "

  " Highligh cursor word
  Plug 'itchyny/vim-cursorword'

  " Multiple cursors
  Plug 'terryma/vim-multiple-cursors'

  " Alig code
  Plug 'godlygeek/tabular',{  'on': 'Tabularize'}

  " Comments
  Plug 'tpope/vim-commentary'

  " Find and Replace
  Plug 'jremmen/vim-ripgrep'

  Plug 'machakann/vim-highlightedyank'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'rhysd/committia.vim'

  " Allow repeat to work with plugins
  Plug 'tpope/vim-repeat'

  " Visual indentation
  Plug 'Yggdroot/indentLine'
    let g:indentLine_enabled = 0

  " Nice starup
  Plug 'mhinz/vim-startify'

  " Highligh empty space and auto remove it
  Plug 'ntpeters/vim-better-whitespace'
    let g:better_whitespace_enabled=0
    let g:strip_whitespace_on_save=0

  " Bookmarks
  Plug 'MattesGroeger/vim-bookmarks'

  " Nice foldings
  Plug 'tmhedberg/SimpylFold'

  " Open current workd in Dash
  Plug 'rizzatti/dash.vim'

  " Navigate and highlight matching words
  Plug 'andymass/vim-matchup'

  " Smooth scroll
  " Waiting for tab's support
  " Plug 'sslivkoff/vim-scroll-barnacle'

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
  let g:fzf_layout = { 'down': '~40%' }

  Plug 'alexvko/fzf-to-functions.vim'

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
    Plug 'alexvko/vim-airline-themes'

    let g:airline_section_a = ''
    let g:airline_section_b = ''
    " let g:airline_section_z = '%3p%%/%L'
    let g:airline_section_y = '%#__accent_bold#%{LineNoIndicator()}%#__restore__#'
    " let g:airline_section_x = ''
    " let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" -----------------------------------------------------------------------------
" Autocomplete and Snippets
" -----------------------------------------------------------------------------
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    let g:coc_global_extensions = ['coc-solargraph']

  Plug 'SirVer/ultisnips'
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsExpandTrigger="<C-l>"
    let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/config/snippets']
    let g:UltiSnipsJumpForwardTrigger="<c-n>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

  Plug 'honza/vim-snippets'
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
  Plug 'tpope/vim-rails'
  Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
  Plug 'tpope/vim-endwise', { 'for': 'ruby' }
  " Plug 'uplus/deoplete-solargraph', { 'for': 'ruby' }
  " Plug 'noprompt/vim-yardoc'
  Plug 'tpope/vim-cucumber'
  Plug 'AndrewRadev/splitjoin.vim'
    " let g:blockle_mapping = '<leader>b'

  Plug 't9md/vim-ruby_eval'
" -----------------------------------------------------------------------------
" Elixir
" -----------------------------------------------------------------------------
  Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
  Plug 'elixir-editors/vim-elixir'
  Plug 'mhinz/vim-mix-format'
    let g:mix_format_on_save = 0

" -----------------------------------------------------------------------------
" Go
" -----------------------------------------------------------------------------
  Plug 'fatih/vim-go'

" -----------------------------------------------------------------------------
" Javascript
" -----------------------------------------------------------------------------
  Plug 'Galooshi/vim-import-js'

  " ES2015 code snippets
  Plug 'epilande/vim-es2015-snippets'

  " React code snippets
  Plug 'epilande/vim-react-snippets'

  Plug 'heavenshell/vim-jsdoc'
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'chemzqm/vim-jsx-improve'

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
  Plug 'pearofducks/ansible-vim', { 'for': 'yaml.ansible' }

" -----------------------------------------------------------------------------
" Docker
" -----------------------------------------------------------------------------
  Plug 'ekalinin/Dockerfile.vim'

" -----------------------------------------------------------------------------
" PSQL
" -----------------------------------------------------------------------------
  Plug 'lifepillar/pgsql.vim'

call plug#end()

  " TODO: create new pluggin:
  " - switches case between snake_case and CamelCase
  " - Gets the last typed text and converts to the target case
  " - Autocomplete only classses(or models, controllers)
