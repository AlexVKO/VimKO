# Create docs with the commands that I use the most
# - C-X X-] autocomplete tags
# - c-u delete line
# - C-X

leader ' ' do
  normal 'r', ':g//d<left><left>', desc: 'Remove lines with a specify pattern', execute: false

  normal 'J', desc: 'Parameterize current line' do |nvim|
    line = nvim.current.line
    line.gsub!(/[^0-9A-Za-z]/, '').strip.gsub(/ +/, '-')
    nvim.current.line = line
  end

  normal 'x', ':call ToogleCheckbox()', desc: 'Toggle Checkbox (empty/[ ]/[x])'

  normal 'h', "<Plug>(quickhl-manual-this)", desc: 'Highlight toggle word', recursively: true
  visual 'h', "<Plug>(quickhl-manual-this)", desc: 'Highlight toggle word', recursively: true
  normal 'H', "<Plug>(quickhl-manual-reset)", desc: 'Highlight reset', recursively: true
  visual 'H', "<Plug>(quickhl-manual-reset)", desc: 'Highlight reset', recursively: true

  normal 'e', "=ae``", desc: 'Indente file'
  normal 'a', "=ap``", desc: 'Indente paragraph'#, keep_cursor_position: true

  normal ',', ':<C-u>silent! keeppatterns %substitute/\s\+$//e', desc: 'Remove empty spaces'
  normal 'o', '<esc>viwp', desc: 'Overwrite word'

  normal 'saw', ':%s/\<<C-r><C-w>\>//g<Left><Left>', desc: 'Substitute all occurences', execute: false

  normal 'd', ':t.', desc: 'Smart Duplication'
  visual 'd', ':co-1', desc: 'Smart Duplication'

  normal 'xk', ":call CutAndPasteByLineNumber('-')<left><left>", desc: "Line cut/past a line BELLOW", execute: false
  normal 'xj', ":call CutAndPasteByLineNumber('+')<left><left>", desc: "Line cut/past a line ABOVE", execute: false

  normal 'ck', ':-t.<left><left>', desc: 'Copy a line BELLOW', execute: false
  normal 'cj', ':+t.<left><left>', desc: 'Copy a line ABOVE', execute: false

  (1..6).each do |n|
    normal n.to_s, ":let &l:foldlevel = #{n - 1}", desc: "Fold until level #{n}"
  end

  prefix 't', name: 'Toggles', desc: 'Toggles' do
    normal 'c', ':ContextToggle', desc: 'Context.vim'
    normal 'r', ':RainbowToggle', desc: 'Rainbow'
  end

  prefix 'ta', name: 'Tabularize', desc: 'Text alignment' do
    [',', '=', ':'].each do |key|
      normal key, ":Tabularize /#{key}\\zs", desc: "Align by #{key}"
      visual key, ":Tabularize /#{key}\\zs", desc: "Align by #{key}"
    end

    normal 't', ':Tabularize /', desc: 'Align by input', execute: false
    visual 't', ':Tabularize /', desc: 'Align by input'
  end

  prefix 'l', name: 'Language', desc: 'Languages' do
    normal 'd', '<Plug>(coc-definition)', desc: '(Coc) Go to definition', recursively: true
    normal 'r', '<Plug>(coc-references)', desc: '(Coc) Find references', recursively: true
    normal 'a', '<Plug>(coc-codeaction)', desc: '(Coc) Apply action', recursively: true
    normal 'f', '<Plug>(coc-fix-current)', desc: '(Coc) Fix current line', recursively: true

    normal 'K', ":call CocAction('doHover')", desc: 'Display documentation'
  end

  prefix 'l', name: 'Ruby', 'desc': 'Ruby mappings', filetype: :ruby do
    normal 'p', ':RAddParameter', desc: "Add params"
    normal 'i', ':RConvertPostConditional', desc: "Toggle if single/multiple lines"
    normal 'l', ':RExtractLet', desc: "Extract variable to let"
    normal 'r', ':<C-u>RubyEvalPrint', desc: "Evaluate Ruby code"
    normal 'R', ':<C-u>RubyEvalInsert', desc: "Evaluate Ruby code"

    visual 'U', ':RExtractConstant', desc: "Extract variable to constant"
    visual 'm', ':RExtractMethod', desc: "Extract variable to method"
    visual 'r', ':<C-u>RubyEvalPrint', desc: "Evaluate Ruby code"
    visual 'R', ':<C-u>RubyEvalInsert', desc: "Evaluate Ruby code"
  end

  prefix 'l', name: 'Elixir', 'desc': 'Elixir mappings', filetype: :elixir do
  end

  prefix 'l', name: 'Javascript', 'desc': 'Javascript mappings', filetype: :javascript do
    normal 'd', '<Plug>(jsdoc)', desc: 'Generate docs', recursively: true
  end

  prefix 'l', name: 'Python', 'desc': 'Python mappings', filetype: :python do
  end

  prefix 'l', name: 'Zsh', 'desc': 'Terminal prefixes', filetype: :zsh do
  end
end

prefix 't', name: 'Tabs', desc: 'Interations with Tabs' do
  normal 'H', ':tabmove -1', desc: 'Move <'
  normal 'L', ':tabmove +1', desc: 'Move >'

  normal 't', ':tabnew', desc: 'New'
  normal 'h', ':tabprev', desc: 'Focus <'
  normal 'l', ':tabnext', desc: 'Focus >'
end

prefix ';', name: 'FuzzyFinder', desc: 'Fuzzy everything' do
  normal 'f', ':Files', desc: 'All files'
  normal 'g', ':Ag', desc: 'Search all'
  normal 't', ':Tags', desc: 'Search tags'
  normal 'T', ':BTags', desc: 'Search file tags'
  normal 'c', ':BCommits', desc: 'Commits'
  normal '/', '<Plug>(AerojumpBolt)', desc: 'Search lines', recursively: true
  normal 'a', ':Args', desc: 'Arglist files'
  normal 'me', ':CocList outline', desc: 'Symbols in the current file.'

  prefix name: 'Rails', desc: 'Rails files', filetype: :ruby do
    normal 'm', ':Files app/models/', desc: 'Models'
    normal 'c', ':Files app/controllers/', desc: 'Controllers'
    normal 'r', ':Files <cr> spec/_spec.rb<left><left><left><left><left><left><left><left>', desc: 'RSpec'
  end
end

prefix ',', name: 'Files', desc: 'File' do
  normal 'c', ":saveas <C-r>=expand('%')<CR><C-F>", desc: '(c)opy the current node', execute: false
  normal 'd', ':!rm %', desc: '(d)elete the current node', execute: false
  normal 'm', ":!mv <C-r>=expand('%')<cr> <C-r>=expand('%')<CR><C-F>", desc: '(m)ove the current node', execute: false
  normal 'r', ':checktime', desc: "(r)eload the file"

  normal 'y', ":let @+=join([expand('%'), line('.')], ':')<CR>:echo 'Relative path copied to clipboard.'", desc: 'Copy Relative path'
  normal 'Y', ":let @+=expand('%:p')<CR>:echo 'Absolute pat copied to clipboard.'", desc: 'Copy Absolute path'

  normal 'a', ':NERDTreeFind', desc: '(NerdTree) Reveal Current file'
  normal 'e', ':NERDTreeFind', desc: '(NerdTree) Toggle'

  normal 'o', ':call OpenCurrentFileOnGithub()', desc: 'Open on GitHub'

  prefix name: 'Javascript', desc: 'JS files', filetype: :javascript do
    normal 'i', ':Rg "import " . <c-r>=expand("<cword>")', desc: 'Current module was imported'
  end

  prefix name: 'Ruby', desc: 'Ruby files', filetype: :ruby do
    normal 'f', ":! bundle exec rubocop -a <C-r>=expand('%')<cr>  >/dev/null<cr>", desc: "Run rubocop"
  end

  prefix name: 'JSON', desc: 'JSON files', filetype: :json do
    normal 'f', ":%!python -m json.tool", desc: "Prettify"
  end
end

prefix 's', name: 'Windows', desc: 'Windows management' do
  normal 'v', ':<C-u>split', desc: 'Split verticaly'
  normal 'g', ':<C-u>vsplit', desc: 'Split horizontaly'
  normal 'c', ':close<CR>', desc: 'Close window'
  normal 'co',':<C-u>only<CR>', desc: 'Close all but the current'
  normal 'b', ':b#<CR>', desc: 'Back to previoius buffer'
  normal 'r', '<C-w>x', desc: 'Rotate buffers'
  normal 'n', "<C-w>T <bar> :tablast", desc: 'Detache the current pane to a new'
  normal 'z', ':Goyo<CR>', desc:  'Zoom buffer'
end

prefix '!', name: 'Terminal', desc: 'Vim Terminal and Tmux' do
  normal 'b', ':below new \| resize 10 \| terminal bundle install', desc: 'Bundle Install'
  normal 't', ":call RunTestsOnLeftPane(expand('%:p')) <CR> :echo g:VimuxLastCommand", desc: 'Run tests(whole file)'
  # normal 't', desc: 'Run current file' do |nvim|
  #   line = nvim.current.buffer.lines.to_a[5]
  #   puts line
  #   # nvim.command("echom '#{line}'")
  #   # nvim.command("echom 'Yay'")
  # end
  normal 'T', ":call RunTestsOnLeftPane(join([expand('%:p'), line('.')], ':'))<CR> :echo g:VimuxLastCommand", desc: 'Run tests(current line)'
  normal 'c', ":call VimuxRunCommand(join(['clear ;', 'bin/cop', expand('%')], ' '))", desc: "Rubycop", filetype: :ruby
  normal '!', ':VimuxPromptCommand', desc: 'Promp Vimux'
  normal 'l', ':VimuxRunLastCommand<CR> :echo g:VimuxLastCommand', desc: 'Run last command'

  visual '!', 'vy :call VimuxSlime()<CR>', desc: 'Run selection in Tmux '
end

normal '*', ':%s/\<<C-r><C-w>\>//n<cr>0N', desc: 'Select all occurences of the word and display a counter', execute: false
normal '<expr> gp', "'`['.strpart(getregtype(), 0, 1).'`]'", desc: 'Selecte pasted text'
visual 's', ':s//g<Left><Left>', desc: 'Substitute inside selection', execute: false

normal 'N', 'n', desc: ''
normal 'n', 'N', desc: ''
normal 'Y', 'y$', desc: 'Yank until end of line'
normal 'q', ':<C-U>:quit', desc: 'quit'

normal '<return>', 'za', desc: 'Toggle fold'

visual '<', '<gv', desc: 'Select blocks after indenting'
visual '>', '>gv|', desc: 'Select blocks after indenting'

normal 'Q', 'q', desc: 'Record macro'

# normal '/', '<Plug>(easymotion-overwin-f2)', desc: 'Easymotion', recursively: true

normal '[g', '<Plug>(coc-diagnostic-prev)', desc: ''
normal ']g', '<Plug>(coc-diagnostic-next)', desc: ''

normal ';w', ':w', desc: 'Quick save'

normal 'f', '<Plug>Sneak_s', desc: 'Find by 2 chars(forward)', recursively: true
normal 'F', '<Plug>Sneak_S', desc: 'Find by 2 chars(backward)', recursively: true

insert '<expr> <C-j>', 'pumvisible() ? "\<C-n>" : "\<C-j>"', desc: 'Remap move DOWN on suggestions'
insert '<expr> <C-k>', 'pumvisible() ? "\<C-p>" : "\<C-k>"', desc: 'Remap move UP on suggestions'

prefix name: 'Resize', desc: '' do
  normal '<Up>',    ':resize +2', desc: 'Resize up'
  normal '<Down>',  ':resize -2', desc: 'Resize down'
  normal '<Left>',  ':vertical resize +10', desc: 'Resize left'
  normal '<Right>', ':vertical resize -10', desc: 'Resize right'
end

prefix 'g', name: 'Git', desc: 'Git and Github commands' do
  normal 'ac', ":call VimuxRunCommand('git add . && git commit')", desc: 'Add and Commit'
end

normal 'gg', ':1', desc: 'Work around for keeping g a prefix for Git'

command 'Retab', ':set expandtab | retab', desc: "Replace tabs to specs of the current file"
command '-bang Args', "call fzf#run(fzf#wrap('args', {'source': argv()}, <bang>0))", desc: "Funtion for FZF"
command 'Reload', ':so ~/.config/nvim/init.vim', desc: "Reload command"
