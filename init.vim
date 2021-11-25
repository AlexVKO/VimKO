source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/theme.vimrc
source $HOME/.config/nvim/managed_mappings.vimrc

set encoding=UTF-8
set hidden                   " hide buffers when abandoned instead of unload
set synmaxcol=1000           " Don't syntax highlight long lines
set colorcolumn=80,120
set spelllang=en
set mmp=5000
set scrolloff=3

" Give more space for displaying messages.
set cmdheight=2

set tags=./.tags

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Behavior
set number
set relativenumber
set nowrap
set inccommand=nosplit
set list                " Show hidden characters
set listchars=tab:→\ ,nbsp:␣,trail:•,eol:\ ,precedes:«,extends:»
set clipboard=unnamed
set foldmethod=indent
set foldlevelstart=99

" Appearance
set noshowmode          " Don't show mode in cmd window
set showtabline=2       " Always show the tabs line
set scrolloff=2         " Keep at least 2 lines above/below
set sidescrolloff=5     " Keep at least 5 lines left/right
set display=lastline
set cursorline

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
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

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

" Groovy syntax highlighting for Jenkinsfiles
au BufNewFile,BufRead Jenkinsfile set filetype=groovy

" Treat words with dash as a word
set iskeyword+=-

" Coc
augroup mygroup
  autocmd!

  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Checkbox toogler
fu! ToogleCheckbox()
  let line = getline('.')

  if(match(line, '\[.*\]') != -1)
    let states = [' ', 'x', 'n/a']

    if(match(line, '\[\]') != -1)
      let line = substitute(line, '\[\]', '[ ]', '')
    end

    for state in states
      if(match(line, '\[' . state . '\]') != -1)
        if state == 'n/a'
          let next_state = states[0]
        else
          let next_state = states[index(states, state) + 1]
        endif
        let line = substitute(line, '\[' . state . '\]', '[' . next_state . ']', '')
        break
      endif
    endfor
  else
    let line = substitute(line, '\<', '' . '[ ]' . ' ', '')
  endif

  call setline('.', line)
endf

set timeoutlen=500

function! RunTestsOnLeftPane(file_name)
  if(match(a:file_name, '_spec.rb') != -1)
    VimuxRunCommand("clear; bundle exec rspec " . a:file_name . " --fail-fast -fd")
  elseif(match(a:file_name, '.feature') != -1)
    VimuxRunCommand("clear; bin/spring cucumber " . a:file_name . " --fail-fast --profile")
  elseif(match(a:file_name, 'test/.*_test.exs') != -1)
    VimuxRunCommand("clear; mix test " . a:file_name)
  elseif(match(a:file_name, 'test/.*_test.rb') != -1)
    VimuxRunCommand("clear; be rake test TEST=" . a:file_name)
  elseif(match(a:file_name, 'tests/flows/.*_process.rb') != -1)
    VimuxRunCommand("clear; bundle exec flows test " . a:file_name)
  endif
endfunction

function! VimuxSlime()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

function! OpenCurrentFileOnGithub()
  let branch_url = system('git remote get-url --all origin | grep github | head -1')
  let branch_path = substitute(split(branch_url, ':')[1], '.git', '', 'g')

  let repo_url = "https://github.com/" .  substitute(branch_path, '\n\+$', '', '') . "/blob/master/" . expand('%') . '\#L' . line('.')
  exec "! open " . repo_url
endfunction

function! CutAndPasteByLineNumber(relative_line_number)
  let cursor_position = getpos('.')

  exec a:relative_line_number . 'd'
  call setpos(".", cursor_position)
  normal P
  call setpos(".", cursor_position)
endfunction

" set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif
endfunction

" TODO add to mappings manager 
cnoremap <C-A> <Home>






