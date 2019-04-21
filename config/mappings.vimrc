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

  nnoremap  [Terminal]   <Nop>
  nmap      ! [Terminal]

  nnoremap  [Git]   <Nop>
  nmap      g [Git]

" -----------------------------------------------------------------------------
" Miscellaneous
" -----------------------------------------------------------------------------
  " Remove lines with a specify patter
  " TODO make this work with fzf
  nnoremap <leader>rp :g//d<left><left>

  " Reload command
  command! Reload :so ~/.config/nvim/init.vim

  " go to normal mode
  inoremap kj <Esc>

  " Highlight cursor word
  nmap <Leader>h <Plug>(quickhl-manual-this)
  xmap <Leader>h <Plug>(quickhl-manual-this)
  nmap <Leader>H <Plug>(quickhl-manual-reset)
  xmap <Leader>H <Plug>(quickhl-manual-reset)

  " Highlight selected lines
  function! HighlightRegion()
    hi Green guibg=#3c4554
    let l_start = line("'<")
    let l_end = line("'>")
    execute 'syntax region Green start=/\%3'.l_start.'/ end=/\%'.l_end.'l/'
  endfunction

  vnoremap <leader>y :<C-U>call HighlightRegion()<CR>

  " Checkbox
  map <silent> <leader>x :call ToogleCheckbox()<cr>

  " Expand region
  xmap v <Plug>(expand_region_expand)
  xmap V <Plug>(expand_region_shrink)

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

  " Select all occurences of the word and display a counter
  nnoremap * :%s/\<<C-r><C-w>\>//n<cr>

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

  " Line comment without move the cursor
  " TODO

  " Line cut/past without move the cursor
  nnoremap <Leader>xk :call CutAndPasteByLineNumber('-')<left><left>
  nnoremap <Leader>xj :call CutAndPasteByLineNumber('+')<left><left>

  function! CutAndPasteByLineNumber(relative_line_number)
    let cursor_position = getpos('.')

    exec a:relative_line_number . 'd'
    call setpos(".", cursor_position)
    normal P
    call setpos(".", cursor_position)
  endfunction

  " Line copy without move the cursor
  nnoremap <Leader>ck :-t.<left><left>
  nnoremap <Leader>cj :+t.<left><left>

  " Macro
  nnoremap Q q
  nnoremap M @q
  vnoremap M :norm @q<CR>

  " Select blocks after indenting
  xnoremap < <gv
  xnoremap > >gv|

  " Toggle fold
  nnoremap <return> za

  " Focus the current fold by closing all others
  nnoremap <leader>z zMza

  " Display diff from last save
  command! DiffOrig vert new | setlocal bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

  " Replace tabs to specs of the current file
  command! Retab :set expandtab | retab

  " Toggle Syntax on markdown files
  nnoremap <Leader>ts :call ToggleMarkdownSyntax()<cr>

  function! ToggleMarkdownSyntax()
    if &syntax == 'markdown'
      exe "set syntax=text"
    elseif &syntax == 'text'
      exe "set syntax=markdown"
    else
      echo 'Not supported'
    end
  endfunction

" -----------------------------------------------------------------------------
" Git
" -----------------------------------------------------------------------------
  nnoremap [Git]s :Gstatus<CR>
  nnoremap [Git]o :call OpenCurrentFileOnGithub()<cr>
  nnoremap [Git]af :Git add %:p<CR><CR>
  nnoremap [Git]ac :call VimuxRunCommand('git add . && git commit')<CR>
  " nnoremap [Git]ac :call VimuxRunCommand('git diff')<CR>
  nnoremap gg :1<CR>

  function! OpenCurrentFileOnGithub()
    let branch_url = system('git remote get-url --all origin | grep github | head -1')
    let branch_path = substitute(split(branch_url, ':')[1], '.git', '', 'g')

    let repo_url = "https://github.com/" .  substitute(branch_path, '\n\+$', '', '') . "/blob/master/" . expand('%') . '\#L' . line('.')
    exec "! open " . repo_url
  endfunction


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

  " Detache the current pane to a new full window
  nnoremap <silent> [Windows]n <C-w>T | :tablast

  " Swap panes position
  nnoremap <silent> [Windows]s <C-w>R

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
  " Move to left/right
  nnoremap <silent> [Tabs]H :tabmove -1<cr>
  nnoremap <silent> [Tabs]L :tabmove +1<cr>

  nnoremap <silent> [Tabs]n :tabmove +1<cr>

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
  nnoremap [Files]m :!mv <C-r>=expand('%')<cr> <C-r>=expand('%')<cr>

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
  nnoremap <silent> [FuzzyFinder]mo :Files <cr> app/models/
  nnoremap <silent> [FuzzyFinder]c :Files <cr> app/controllers/
  nnoremap <silent> [FuzzyFinder]g :Find<cr>
  nnoremap <silent> [FuzzyFinder]t :Tags <cr>
  nnoremap <silent> [FuzzyFinder]T :BTags <cr>
  nnoremap <silent> [FuzzyFinder]gc :BCommits <cr>
  nnoremap <silent> [FuzzyFinder]/ :BLines <cr>
  " nnoremap <silent> [FuzzyFinder]me :BLines <cr> def\<space>

" -----------------------------------------------------------------------------
" Dictionary and documentations
" -----------------------------------------------------------------------------
  " Open the macOS dictionary on current word
  " nmap <Leader>? :!open dict://<cword><CR><CR>
  nmap <Leader>? :!open dict://<q-args>

  :nmap <silent> <leader>k <Plug>DashSearch

  " Use K for show documentation in preview window
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if &filetype == 'vim'
      execute 'h '.expand('<cword>')
    else
      call CocAction('doHover')
    endif
  endfunction

" -----------------------------------------------------------------------------
" COC and Gotos
" -----------------------------------------------------------------------------
  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  nnoremap <silent> [FuzzyFinder]me :CocList outline<cr>

" -----------------------------------------------------------------------------
" Tabularize
" -----------------------------------------------------------------------------
  nmap <Leader>t= :Tabularize /=    <CR>
  vmap <Leader>t= :Tabularize /=    <CR>
  nmap <Leader>t, :Tabularize /,\zs <CR>
  vmap <Leader>t, :Tabularize /,\zs <CR>
  nmap <Leader>t: :Tabularize /:\zs <CR>
  vmap <Leader>t: :Tabularize /:\zs <CR>
  nmap <Leader>tt :Tabularize /
  vmap <Leader>tt :Tabularize /

" -----------------------------------------------------------------------------
" Terminal/Tmux pane integration
" -----------------------------------------------------------------------------
  nnoremap [Terminal]b :below new \| resize 10 \| terminal bundle install<CR>
  nnoremap [Terminal]c :call VimuxRunCommand(join(['clear ;', 'bin/cop', expand('%')], ' '))<CR>
  nnoremap [Terminal]e :call VimuxRunCommand('exit')<CR>
  nnoremap [Terminal]i :below new \| resize 10 \| terminal topcli info<CR>
  nnoremap [Terminal]pm :below new \| resize 10 \| terminal topcli pr list<CR>
  nnoremap [Terminal]pt :below new \| resize 10 \| terminal topcli pr list team<CR>
  nnoremap [Terminal]s :below new \| resize 10 \| terminal bin/setup
  nnoremap [Terminal]t :call RunTestsOnLeftPane(expand('%')) <CR> :echo g:VimuxLastCommand<CR>
  nnoremap [Terminal]T :call RunTestsOnLeftPane(join([expand('%'), line('.')], ':'))<CR> :echo g:VimuxLastCommand<CR>

  " Prompt for a command to run
  map [Terminal]! :VimuxPromptCommand<CR>

  " Run the last shell command
  nnoremap <silent><leader>l :!!<CR>

  " Run last command executed by VimuxRunCommand
  map [Terminal]l :VimuxRunLastCommand<CR> :echo g:VimuxLastCommand<CR>

  " Close vim tmux runner opened by VimuxRunCommand
  map [Terminal]q :VimuxCloseRunner<CR>

  " If text is selected, save it in the v buffer and send that buffer it to tmux
  vmap <leader>! "vy :call VimuxSlime()<CR>

  " Select current paragraph and send it to tmux
  nmap <leader>! vip<leader>ts<CR>

  function! VimuxSlime()
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
  endfunction


  function! RunTestsOnLeftPane(file_name)
    if(match(a:file_name, '_spec.rb') != -1)
      VimuxRunCommand("clear; SUPPRESS_BACKTRACE=true bin/spring rspec " . a:file_name . " --fail-fast --profile")
    elseif(match(a:file_name, '.feature') != -1)
      VimuxRunCommand("clear; bin/spring cucumber " . a:file_name . " --fail-fast --profile")
    elseif(match(a:file_name, 'test/.*_test.rb') != -1)
      VimuxRunCommand("clear; be rake test TEST=" . a:file_name)
    elseif(match(a:file_name, 'tests/flows/.*_process.rb') != -1)
      VimuxRunCommand("clear; bundle exec flows test " . a:file_name)
    else
      echo 'Test command not implemented for this file type.'
    endif
  endfunction
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
