" -----------------------------------------------------------------------------
" Leaders
" -----------------------------------------------------------------------------
  let mapleader="\<space>"

  nnoremap  [FuzzyFinder]   <Nop>
  nmap      ; [FuzzyFinder]

  nnoremap  [Files]   <Nop>
  nmap      , [Files]

  nnoremap  [Windows]   <Nop>
  nmap      s [Windows]

  nnoremap  [Tabs]   <Nop>
  nmap      t [Tabs]

  nnoremap  [Tmux]   <Nop>
  nmap      ! [Tmux]

  nnoremap  [Git]   <Nop>
  nmap      g [Git]
" -----------------------------------------------------------------------------
" Miscellaneous
" -----------------------------------------------------------------------------
  " Remove lines with a specify patter
  nnoremap <leader>rp :g//d<left><left>

  " Reload command
  command! Reload :so ~/.config/nvim/init.vim

  " Checkbox
  map <silent> <leader>x :call ToogleCheckbox()<cr>

  " Indent paragraph
  nnoremap <leader>a =ip

  " Remove empty spaces
  nnoremap <leader>, :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>

  " Overwrite word unders cursor
  nnoremap <leader>ow <Esc>viwp

  " Fast write
  nnoremap <Leader>w :write<CR>

  " Substitute all occurences in current file
  nnoremap <Leader>saw :%s/\<<C-r><C-w>\>//g<Left><Left>

  " Substitute inside selection
  xnoremap s :s//g<Left><Left>

  " Select pasted text
  nnoremap <expr> gp '`['.strpart(getregtype(), 0, 1).'`]'

  " Yank until end of line
  nnoremap Y y$

  " Quite with q
  nnoremap <silent> q :<C-u>:quit<CR>

  " Toggle Tagbar
  nmap <leader>; :TagbarToggle<CR>

  " Open easy motion between panels
  nmap <silent> / <Plug>(easymotion-overwin-f2)

  " Paste without yank
  vnoremap p "_dP

  " Change current word in a repeatable manner
  nnoremap cn *``cgn
  nnoremap cN *``cgN

  " Change selected word in a repeatable manner
  vnoremap <expr> cn "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgn"
  vnoremap <expr> cN "y/\\V\<C-r>=escape(@\", '/')\<CR>\<CR>" . "``cgN"

  " Save with sudo
  cmap W!! w !sudo tee % >/dev/null

  " Smart Duplication
  nnoremap <Leader>d :t.<cr>
  vnoremap <Leader>d :co-1<cr>

  " Line copy without move the cursor
  nnoremap <Leader>c :t.<left><left>

  " Macro
  nnoremap Q q
  nnoremap M @q
  vnoremap M :norm @q<CR>

  " Select blocks after indenting
  xnoremap < <gv
  xnoremap > >gv|

  " Toggle fold
  nnoremap <CR> za

  " Focus the current fold by closing all others
  nnoremap <S-Return> zMza

  " Display diff from last save
  command! DiffOrig vert new | setlocal bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" -----------------------------------------------------------------------------
" Git
" -----------------------------------------------------------------------------
  nnoremap [Git]s :Gstatus<CR>
  nnoremap [Git]af :Git add %:p<CR><CR>
  nnoremap [Git]ac :call VimuxRunCommand('git add . && git commit')<CR>
  nnoremap [Git]ac :call VimuxRunCommand('git diff')<CR>
  nnoremap gg :1<CR>

" -----------------------------------------------------------------------------
" Dictionary and documentations
" -----------------------------------------------------------------------------
  " Open the macOS dictionary on current word
  nmap <Leader>? :!open dict://<cword><CR><CR>

" -----------------------------------------------------------------------------
" Windows
" -----------------------------------------------------------------------------
  " Split verticaly
  nnoremap <silent> [Windows]v :<C-u>split<CR>

  " Split horizontaly
  nnoremap <silent> [Windows]g :<C-u>vsplit<CR>

  " Close window
  nnoremap <silent> [Windows]c :close<CR>

  " Close all but the current
  nnoremap <silent> [Windows]co :<C-u>only<CR>

  " Back to previoius buffer
  nnoremap <silent> [Windows]b :b#<CR>

  " Rotate buffers
  nnoremap <silent> [Windows]r <C-w>x

  " Zoom buffer
  nnoremap [Windows]z :Goyo<CR>

  " Resize
  nnoremap <Up>    :resize +2<CR>
  nnoremap <Down>  :resize -2<CR>
  nnoremap <Left>  :vertical resize +2<CR>
  nnoremap <Right> :vertical resize -2<CR>

" -----------------------------------------------------------------------------
" Foldings
" -----------------------------------------------------------------------------
  " Fold the entire file by indentation level
  nnoremap <silent> <leader>1 :let &l:foldlevel = 0<cr>
  nnoremap <silent> <leader>2 :let &l:foldlevel = 1<cr>
  nnoremap <silent> <leader>3 :let &l:foldlevel = 2<cr>
  nnoremap <silent> <leader>4 :let &l:foldlevel = 3<cr>
  nnoremap <silent> <leader>5 :let &l:foldlevel = 4<cr>
  nnoremap <silent> <leader>0 :let &l:foldlevel = 20<cr>

  " -----------------------------------------------------------------------------
  " Tabs
  " -----------------------------------------------------------------------------

  " Move to
  nnoremap <silent> [Tabs]t :tabnew<CR>
  nnoremap <silent> [Tabs]l :tabnext<CR>
  nnoremap <silent> [Tabs]h :tabprev<CR>

" -----------------------------------------------------------------------------
" Files
" -----------------------------------------------------------------------------
  " Duplicate current file
  nnoremap [Files]du :saveas <C-r>=expand('%')<cr><left><left><left>

  " Delete current file
  nnoremap [Files]de :!rm %

  " Move/Rename current file
  nnoremap [Files]m :!mv <C-r>=expand('%')<cr> <C-r>=expand('%:h')<cr>

  " Copy Relative path
  nnoremap <silent> [Files]y :let @+=join([expand("%"), line('.')], ':')<CR>:echo 'Relative path copied to clipboard.'<CR>

  " Copy Absolute path
  nnoremap <silent> [Files]Y :let @+=expand("%:p")<CR>:echo 'Absolute pat copied to clipboard.'<CR>

  " Sidebars
  nnoremap <silent> [Files]a :NERDTreeFind<CR>
  nnoremap <silent> [Files]e :NERDTreeToggle<CR>

  " Find all
  nnoremap [Files]g :F <c-r>=expand("<cword>")<cr> all --source=rg<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
  nnoremap [Files]r :Far <c-r>=expand("<cword>")<cr>  all  --source=rg<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

" -----------------------------------------------------------------------------
" FuzzyFinder
" -----------------------------------------------------------------------------
  nnoremap <silent> [FuzzyFinder]f :Files<cr>
  nnoremap <silent> [FuzzyFinder]w :Windows<cr>
  nnoremap <silent> [FuzzyFinder]g :Find<cr>
  nnoremap <silent> [FuzzyFinder]t :Tags <cr>
  nnoremap <silent> [FuzzyFinder]T :BTags <cr>
  nnoremap <silent> [FuzzyFinder]c :BCommits <cr>
  nnoremap <silent> [FuzzyFinder]b :Buffers <cr>
  nnoremap <silent> [FuzzyFinder]/ :BLines <cr>
  nnoremap <silent> [FuzzyFinder]m :Marks <cr>

" -----------------------------------------------------------------------------
" Tabularize
" -----------------------------------------------------------------------------
  nmap <Leader>t= :Tabularize /=    <CR>
  vmap <Leader>t= :Tabularize /=    <CR>
  nmap <Leader>t: :Tabularize /:\zs <CR>
  vmap <Leader>t: :Tabularize /:\zs <CR>
  nmap <Leader>tt :Tabularize /
  vmap <Leader>tt :Tabularize /

" -----------------------------------------------------------------------------
" Tmux pane integration
" -----------------------------------------------------------------------------
  function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
  endfunction

  " Run tests for the currente file
  nnoremap [Tmux]t :call RunTestsOnLeftPane(expand('%'))<CR> :echo g:VimuxLastCommand<CR>
  nnoremap [Tmux]T :call RunTestsOnLeftPane(join([expand('%'), line('.')], ':'))<CR> :echo g:VimuxLastCommand<CR>

  function! RunTestsOnLeftPane(file_name)
    if(match(a:file_name, '_spec.rb') != -1)
      VimuxRunCommand("clear; SUPPRESS_BACKTRACE=true bin/spring rspec " . a:file_name . " --fail-fast")
    elseif(match(a:file_name, '.feature') != -1)
      VimuxRunCommand("clear; bin/spring cucumber " . a:file_name . " --fail-fast")
    else
      echo 'Test command not implemented for this file type.'
    endif
  endfunction

  nnoremap [Tmux]b :call VimuxRunCommand('bundle install')<CR>
  nnoremap [Tmux]p :call VimuxRunCommand('t pr list')<left><left>
  nnoremap [Tmux]c :call VimuxRunCommand('bin/cop')<CR>
  nnoremap [Tmux]e :call VimuxRunCommand('exit')<CR>

  " Prompt for a command to run
  map [Tmux]! :VimuxPromptCommand<CR>

  " Run the last shell command
  nnoremap <silent><leader>l :!!<CR>

  " Run last command executed by VimuxRunCommand
  map [Tmux]l :VimuxRunLastCommand<CR> :echo g:VimuxLastCommand<CR>

  " Close vim tmux runner opened by VimuxRunCommand
  map [Tmux]q :VimuxCloseRunner<CR>

  " If text is selected, save it in the v buffer and send that buffer it to tmux
  vmap <leader>! "vy :call VimuxSlime()<CR>

  " Select current paragraph and send it to tmux
  nmap <leader>! vip<leader>ts<CR>

" -----------------------------------------------------------------------------
" Javascript
" -----------------------------------------------------------------------------
  function! JSTextObjectFunction()
      normal! ]}%
      execute "normal ?function\<CR>"
      normal! vf{%
  endfunction
  vnoremap af :<C-U>silent! :call JSTextObjectFunction()<CR>

" -----------------------------------------------------------------------------
" Ruby
" -----------------------------------------------------------------------------
  nnoremap <leader>Rap  :RAddParameter<cr>
  nnoremap <leader>Rcc  :RConvertPostConditional<cr>
  nnoremap <leader>Rele :RExtractLet<cr>
  vnoremap <leader>Reco :RExtractConstant<cr>
  vnoremap <leader>Relo :RExtractLocalVariable<cr>
  nnoremap <leader>Rrv  :RInlineTemp<cr>
  vnoremap <leader>Rem  :RExtractMethod<cr>
