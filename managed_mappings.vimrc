
" ----------------------------------------------------------------
" Leader
" ----------------------------------------------------------------
let mapleader=' '

if !exists('g:which_key_map')
  let g:which_key_map = {}
endif
call which_key#register(' ', 'g:which_key_map')
nnoremap <leader> :<c-u>WhichKey '<leader>'<CR>
vnoremap <leader> :<c-u>WhichKeyVisual '<leader>'<CR>

" Remove lines with a specify pattern
nnoremap <leader>r :g//d<left><left>
call extend(g:which_key_map, {'r':'Remove lines with a specify pattern'})

" Jusst testing
nnoremap <leader>z :call ExecuteRubyMapping('leaderz', 'all')<CR>
call extend(g:which_key_map, {'z':'Jusst testing'})

" Parameterize current line
nnoremap <leader>J :call ExecuteRubyMapping('leaderJ', 'all')<CR>
call extend(g:which_key_map, {'J':'Parameterize current line'})

" Toggle Checkbox (empty/[ ]/[x])
nnoremap <leader>x :call ToogleCheckbox()<CR>
call extend(g:which_key_map, {'x':'Toggle Checkbox (empty/[ ]/[x])'})

" Highlight toggle word
nmap <leader>h <Plug>(quickhl-manual-this)
call extend(g:which_key_map, {'h':'Highlight toggle word'})

" Highlight toggle word
xmap <leader>h <Plug>(quickhl-manual-this)

" Highlight reset
nmap <leader>H <Plug>(quickhl-manual-reset)
call extend(g:which_key_map, {'H':'Highlight reset'})

" Highlight reset
xmap <leader>H <Plug>(quickhl-manual-reset)

" Indente file
nnoremap <leader>e =ae``
call extend(g:which_key_map, {'e':'Indente file'})

" Indente paragraph
nnoremap <leader>a =ap``
call extend(g:which_key_map, {'a':'Indente paragraph'})

" Remove empty spaces
nnoremap <leader>, :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>
call extend(g:which_key_map, {',':'Remove empty spaces'})

" Overwrite word
nnoremap <leader>o <esc>viwp
call extend(g:which_key_map, {'o':'Overwrite word'})

" Substitute all occurences
nnoremap <leader>saw :%s/\<<C-r><C-w>\>//g<Left><Left>
call extend(g:which_key_map, {'saw':'Substitute all occurences'})

" Smart Duplication
nnoremap <leader>d :t.<CR>
call extend(g:which_key_map, {'d':'Smart Duplication'})

" Smart Duplication
xnoremap <leader>d :co-1<CR>

" Line cut/past a line BELLOW
nnoremap <leader>xk :call CutAndPasteByLineNumber('-')<left><left>
call extend(g:which_key_map, {'xk':'Line cut/past a line BELLOW'})

" Line cut/past a line ABOVE
nnoremap <leader>xj :call CutAndPasteByLineNumber('+')<left><left>
call extend(g:which_key_map, {'xj':'Line cut/past a line ABOVE'})

" Copy a line BELLOW
nnoremap <leader>ck :-t.<left><left>
call extend(g:which_key_map, {'ck':'Copy a line BELLOW'})

" Copy a line ABOVE
nnoremap <leader>cj :+t.<left><left>
call extend(g:which_key_map, {'cj':'Copy a line ABOVE'})

" Fold until level 1
nnoremap <leader>1 :let &l:foldlevel = 0<CR>
call extend(g:which_key_map, {'1':'Fold until level 1'})

" Fold until level 2
nnoremap <leader>2 :let &l:foldlevel = 1<CR>
call extend(g:which_key_map, {'2':'Fold until level 2'})

" Fold until level 3
nnoremap <leader>3 :let &l:foldlevel = 2<CR>
call extend(g:which_key_map, {'3':'Fold until level 3'})

" Fold until level 4
nnoremap <leader>4 :let &l:foldlevel = 3<CR>
call extend(g:which_key_map, {'4':'Fold until level 4'})

" Fold until level 5
nnoremap <leader>5 :let &l:foldlevel = 4<CR>
call extend(g:which_key_map, {'5':'Fold until level 5'})

" Fold until level 6
nnoremap <leader>6 :let &l:foldlevel = 5<CR>
call extend(g:which_key_map, {'6':'Fold until level 6'})


  " ----------------------------------------------------------------
  " Prefix Leader > Toggles
  " Key <leader>t
  " Toggles
  " ----------------------------------------------------------------
  let g:which_key_map['t'] = { 'name' : '+Leader > Toggles' }

  " Context.vim
  nnoremap <leader>tc :ContextToggle<CR>
  call extend(g:which_key_map['t'], {'c':'Context.vim'})

  " Rainbow
  nnoremap <leader>tr :RainbowToggle<CR>
  call extend(g:which_key_map['t'], {'r':'Rainbow'})

  " Toggle everything(under cursor)
  nnoremap <leader>te :call ExecuteRubyMapping('leaderte', 'all')<CR>
  call extend(g:which_key_map['t'], {'e':'Toggle everything(under cursor)'})


  " ----------------------------------------------------------------
  " Prefix Leader > Tabularize
  " Key <leader>ta
  " Text alignment
  " ----------------------------------------------------------------
  let g:which_key_map['ta'] = { 'name' : '+Leader > Tabularize' }

  " Align by ,
  nnoremap <leader>ta, :Tabularize /,\zs<CR>
  call extend(g:which_key_map['ta'], {',':'Align by ,'})

  " Align by ,
  xnoremap <leader>ta, :Tabularize /,\zs<CR>

  " Align by =
  nnoremap <leader>ta= :Tabularize /=\zs<CR>
  call extend(g:which_key_map['ta'], {'=':'Align by ='})

  " Align by =
  xnoremap <leader>ta= :Tabularize /=\zs<CR>

  " Align by :
  nnoremap <leader>ta: :Tabularize /:\zs<CR>
  call extend(g:which_key_map['ta'], {':':'Align by :'})

  " Align by :
  xnoremap <leader>ta: :Tabularize /:\zs<CR>

  " Align by input
  nnoremap <leader>tat :Tabularize /
  call extend(g:which_key_map['ta'], {'t':'Align by input'})

  " Align by input
  xnoremap <leader>tat :Tabularize /<CR>


  " ----------------------------------------------------------------
  " Prefix Leader > Language
  " Key <leader>l
  " Languages
  " ----------------------------------------------------------------
  let g:which_key_map['l'] = { 'name' : '+Leader > Language' }

  " (Coc) Go to definition
  nmap <leader>ld <Plug>(coc-definition)
  call extend(g:which_key_map['l'], {'d':'(Coc) Go to definition'})

  " (Coc) Find references
  nmap <leader>lr <Plug>(coc-references)
  call extend(g:which_key_map['l'], {'r':'(Coc) Find references'})

  " (Coc) Apply action
  nmap <leader>la <Plug>(coc-codeaction)
  call extend(g:which_key_map['l'], {'a':'(Coc) Apply action'})

  " (Coc) Fix current line
  nmap <leader>lf <Plug>(coc-fix-current)
  call extend(g:which_key_map['l'], {'f':'(Coc) Fix current line'})

  " Display documentation
  nnoremap <leader>lK :call CocAction('doHover')<CR>
  call extend(g:which_key_map['l'], {'K':'Display documentation'})


  " ----------------------------------------------------------------
  " Prefix Leader > Ruby
  " Key <leader>l
  " Filetype: ruby
  " Ruby mappings
  " ----------------------------------------------------------------
  autocmd FileType ruby let g:which_key_map['l'] = { 'name' : '+Leader > Ruby' }

  " Add params
  autocmd FileType ruby nnoremap <leader>lp :RAddParameter<CR>
  autocmd FileType ruby call extend(g:which_key_map['l'], {'p':'Add params'})

  " Toggle if single/multiple lines
  autocmd FileType ruby nnoremap <leader>li :RConvertPostConditional<CR>
  autocmd FileType ruby call extend(g:which_key_map['l'], {'i':'Toggle if single/multiple lines'})

  " Extract variable to let
  autocmd FileType ruby nnoremap <leader>ll :RExtractLet<CR>
  autocmd FileType ruby call extend(g:which_key_map['l'], {'l':'Extract variable to let'})

  " Evaluate Ruby code
  autocmd FileType ruby nnoremap <leader>lr :<C-u>RubyEvalPrint<CR>
  autocmd FileType ruby call extend(g:which_key_map['l'], {'r':'Evaluate Ruby code'})

  " Evaluate Ruby code
  autocmd FileType ruby xnoremap <leader>lr :<C-u>RubyEvalPrint<CR>

  " Evaluate Ruby code
  autocmd FileType ruby nnoremap <leader>lR :<C-u>RubyEvalInsert<CR>
  autocmd FileType ruby call extend(g:which_key_map['l'], {'R':'Evaluate Ruby code'})

  " Evaluate Ruby code
  autocmd FileType ruby xnoremap <leader>lR :<C-u>RubyEvalInsert<CR>

  " Extract variable to constant
  autocmd FileType ruby xnoremap <leader>lU :RExtractConstant<CR>

  " Extract variable to method
  autocmd FileType ruby xnoremap <leader>lm :RExtractMethod<CR>


  " ----------------------------------------------------------------
  " Prefix Leader > Elixir
  " Key <leader>l
  " Filetype: elixir
  " Elixir mappings
  " ----------------------------------------------------------------
  autocmd FileType elixir let g:which_key_map['l'] = { 'name' : '+Leader > Elixir' }


  " ----------------------------------------------------------------
  " Prefix Leader > Javascript
  " Key <leader>l
  " Filetype: javascript
  " Javascript mappings
  " ----------------------------------------------------------------
  autocmd FileType javascript let g:which_key_map['l'] = { 'name' : '+Leader > Javascript' }

  " Generate docs
  autocmd FileType javascript nmap <leader>ld <Plug>(jsdoc)
  autocmd FileType javascript call extend(g:which_key_map['l'], {'d':'Generate docs'})


  " ----------------------------------------------------------------
  " Prefix Leader > Python
  " Key <leader>l
  " Filetype: python
  " Python mappings
  " ----------------------------------------------------------------
  autocmd FileType python let g:which_key_map['l'] = { 'name' : '+Leader > Python' }


  " ----------------------------------------------------------------
  " Prefix Leader > Zsh
  " Key <leader>l
  " Filetype: zsh
  " Terminal prefixes
  " ----------------------------------------------------------------
  autocmd FileType zsh let g:which_key_map['l'] = { 'name' : '+Leader > Zsh' }


" ----------------------------------------------------------------
" Prefix Tabs
" Key t
" Interations with Tabs
" ----------------------------------------------------------------
let g:which_key_map_tabs = { 'name' : '+Tabs' }
call which_key#register('t', 'g:which_key_map_tabs')
nnoremap t :<c-u>WhichKey 't'<CR>
vnoremap t :<c-u>WhichKeyVisual 't'<CR>

" Move <
nnoremap tH :tabmove -1<CR>
call extend(g:which_key_map_tabs, {'H':'Move <'})

" Move >
nnoremap tL :tabmove +1<CR>
call extend(g:which_key_map_tabs, {'L':'Move >'})

" New
nnoremap tt :tabnew<CR>
call extend(g:which_key_map_tabs, {'t':'New'})

" Focus <
nnoremap th :tabprev<CR>
call extend(g:which_key_map_tabs, {'h':'Focus <'})

" Focus >
nnoremap tl :tabnext<CR>
call extend(g:which_key_map_tabs, {'l':'Focus >'})


" ----------------------------------------------------------------
" Prefix FuzzyFinder
" Key ;
" Fuzzy everything
" ----------------------------------------------------------------
let g:which_key_map_fuzzyfinder = { 'name' : '+FuzzyFinder' }
call which_key#register(';', 'g:which_key_map_fuzzyfinder')
nnoremap ; :<c-u>WhichKey ';'<CR>
vnoremap ; :<c-u>WhichKeyVisual ';'<CR>

" All files
nnoremap ;f :Files<CR>
call extend(g:which_key_map_fuzzyfinder, {'f':'All files'})

" Search all
nnoremap ;g :Ag<CR>
call extend(g:which_key_map_fuzzyfinder, {'g':'Search all'})

" Search tags
nnoremap ;t :Tags<CR>
call extend(g:which_key_map_fuzzyfinder, {'t':'Search tags'})

" Search file tags
nnoremap ;T :BTags<CR>
call extend(g:which_key_map_fuzzyfinder, {'T':'Search file tags'})

" Commits
nnoremap ;c :BCommits<CR>
call extend(g:which_key_map_fuzzyfinder, {'c':'Commits'})

" Search lines
nmap ;/ <Plug>(AerojumpBolt)
call extend(g:which_key_map_fuzzyfinder, {'/':'Search lines'})

" Arglist files
nnoremap ;af :Args<CR>
call extend(g:which_key_map_fuzzyfinder, {'af':'Arglist files'})

" Arglist files
nnoremap ;ad :argadd %<CR>
call extend(g:which_key_map_fuzzyfinder, {'ad':'Arglist files'})

" Arglist files
nnoremap ;ar :argdelete %<CR>
call extend(g:which_key_map_fuzzyfinder, {'ar':'Arglist files'})

" Symbols in the current file.
nnoremap ;me :CocList outline<CR>
call extend(g:which_key_map_fuzzyfinder, {'me':'Symbols in the current file.'})

" Open notes
nnoremap ;n :e notes.md<CR>
call extend(g:which_key_map_fuzzyfinder, {'n':'Open notes'})

" QuickFix current word
nnoremap ;r :Rg <c-r>=expand("<cword>")<CR>
call extend(g:which_key_map_fuzzyfinder, {'r':'QuickFix current word'})

" Go to Datafix
nnoremap ;d :call ExecuteRubyMapping(';d', 'all')<CR>
call extend(g:which_key_map_fuzzyfinder, {'d':'Go to Datafix'})


  " ----------------------------------------------------------------
  " Namespace FuzzyFinder > Rails
  " Filetype: ruby
  " Rails files
  " ----------------------------------------------------------------

  " Models
  autocmd FileType ruby nnoremap ;m :Files app/models/<CR>
  autocmd FileType ruby call extend(g:which_key_map_fuzzyfinder, {'m':'Models'})

  " Controllers
  autocmd FileType ruby nnoremap ;c :Files app/controllers/<CR>
  autocmd FileType ruby call extend(g:which_key_map_fuzzyfinder, {'c':'Controllers'})

  " RSpec
  autocmd FileType ruby nnoremap ;r :Files <cr> spec/_spec.rb<left><left><left><left><left><left><left><left><CR>
  autocmd FileType ruby call extend(g:which_key_map_fuzzyfinder, {'r':'RSpec'})


  " ----------------------------------------------------------------
  " Namespace FuzzyFinder > Javascript
  " Filetype: javascript
  " JS files
  " ----------------------------------------------------------------

  " Current module was imported
  autocmd FileType javascript nnoremap ;i :Rg "import.*<c-r>=expand('<cword>')<CR>"<CR>
  autocmd FileType javascript call extend(g:which_key_map_fuzzyfinder, {'i':'Current module was imported'})

  " Current module was exported
  autocmd FileType javascript nnoremap ;e :ImportJSGoto<CR>
  autocmd FileType javascript call extend(g:which_key_map_fuzzyfinder, {'e':'Current module was exported'})


" ----------------------------------------------------------------
" Prefix Files
" Key ,
" File
" ----------------------------------------------------------------
let g:which_key_map_files = { 'name' : '+Files' }
call which_key#register(',', 'g:which_key_map_files')
nnoremap , :<c-u>WhichKey ','<CR>
vnoremap , :<c-u>WhichKeyVisual ','<CR>

" (c)opy the current node
nnoremap ,c :saveas <C-r>=expand('%')<CR><C-F>
call extend(g:which_key_map_files, {'c':'(c)opy the current node'})

" (d)elete the current node
nnoremap ,d :!rm %
call extend(g:which_key_map_files, {'d':'(d)elete the current node'})

" (m)ove the current node
nnoremap ,m :!mv <C-r>=expand('%')<cr> <C-r>=expand('%')<CR><C-F>
call extend(g:which_key_map_files, {'m':'(m)ove the current node'})

" (r)eload the file
nnoremap ,r :checktime<CR>
call extend(g:which_key_map_files, {'r':'(r)eload the file'})


  " ----------------------------------------------------------------
  " Prefix Files > WorkDir
  " Key ,w
  " Working directory
  " ----------------------------------------------------------------
  let g:which_key_map_files['w'] = { 'name' : '+Files > WorkDir' }

  " Set git root as working directory
  nnoremap ,wg :SetProjectRoot()<CR>
  call extend(g:which_key_map_files['w'], {'g':'Set git root as working directory'})

  " Set working directory as current files directory
  nnoremap ,wc :lcd %:p:h<CR>
  call extend(g:which_key_map_files['w'], {'c':'Set working directory as current files directory'})

  " echo current working directory
  nnoremap ,we :echo getcwd()<CR>
  call extend(g:which_key_map_files['w'], {'e':'echo current working directory'})

" Copy Relative path
nnoremap ,y :let @+=join([expand('%'), line('.')], ':')<CR>:echo 'Relative path copied to clipboard.'<CR>
call extend(g:which_key_map_files, {'y':'Copy Relative path'})

" Copy Absolute path
nnoremap ,Y :let @+=expand('%:p')<CR>:echo 'Absolute pat copied to clipboard.'<CR>
call extend(g:which_key_map_files, {'Y':'Copy Absolute path'})

" (NerdTree) Reveal Current file
nnoremap ,a :NERDTreeFind<CR>
call extend(g:which_key_map_files, {'a':'(NerdTree) Reveal Current file'})

" (NerdTree) Toggle
nnoremap ,e :NERDTreeFind<CR>
call extend(g:which_key_map_files, {'e':'(NerdTree) Toggle'})

" Open on GitHub
nnoremap ,o :call OpenCurrentFileOnGithub()<CR>
call extend(g:which_key_map_files, {'o':'Open on GitHub'})


  " ----------------------------------------------------------------
  " Namespace Files > Javascript
  " Filetype: javascript
  " JS files
  " ----------------------------------------------------------------


  " ----------------------------------------------------------------
  " Namespace Files > Ruby
  " Filetype: ruby
  " Ruby files
  " ----------------------------------------------------------------

  " Run rubocop
  autocmd FileType ruby nnoremap ,f :call VimuxRunCommand("bundle exec rubocop <C-r>=expand('%')<cr>  -c .rubocop_future.yml")<CR>
  autocmd FileType ruby call extend(g:which_key_map_files, {'f':'Run rubocop'})

  " Run rubocop
  autocmd FileType ruby nnoremap ,F :call VimuxRunCommand("bundle exec rubocop -A <C-r>=expand('%')<cr>  -c .rubocop_future.yml")<CR>
  autocmd FileType ruby call extend(g:which_key_map_files, {'F':'Run rubocop'})


  " ----------------------------------------------------------------
  " Namespace Files > JSON
  " Filetype: json
  " JSON files
  " ----------------------------------------------------------------

  " Prettify
  autocmd FileType json nnoremap ,f :%!python -m json.tool<CR>
  autocmd FileType json call extend(g:which_key_map_files, {'f':'Prettify'})


" ----------------------------------------------------------------
" Prefix Windows
" Key s
" Windows management
" ----------------------------------------------------------------
let g:which_key_map_windows = { 'name' : '+Windows' }
call which_key#register('s', 'g:which_key_map_windows')
nnoremap s :<c-u>WhichKey 's'<CR>
vnoremap s :<c-u>WhichKeyVisual 's'<CR>

" Split verticaly
nnoremap sv :<C-u>split<CR>
call extend(g:which_key_map_windows, {'v':'Split verticaly'})

" Split horizontaly
nnoremap sg :<C-u>vsplit<CR>
call extend(g:which_key_map_windows, {'g':'Split horizontaly'})

" Close window
nnoremap sc :close<CR><CR>
call extend(g:which_key_map_windows, {'c':'Close window'})

" Close all but the current
nnoremap sco :<C-u>only<CR><CR>
call extend(g:which_key_map_windows, {'co':'Close all but the current'})

" Back to previoius buffer
nnoremap sb :b#<CR><CR>
call extend(g:which_key_map_windows, {'b':'Back to previoius buffer'})

" Rotate buffers
nnoremap sr <C-w>x
call extend(g:which_key_map_windows, {'r':'Rotate buffers'})

" Detache the current pane to a new
nnoremap sn <C-w>T <bar> :tablast
call extend(g:which_key_map_windows, {'n':'Detache the current pane to a new'})

" Zoom buffer
nnoremap sz :Goyo<CR><CR>
call extend(g:which_key_map_windows, {'z':'Zoom buffer'})

" Substitute inside selection
xnoremap s :s//g<Left><Left>


" ----------------------------------------------------------------
" Prefix Terminal
" Key !
" Vim Terminal and Tmux
" ----------------------------------------------------------------
let g:which_key_map_terminal = { 'name' : '+Terminal' }
call which_key#register('!', 'g:which_key_map_terminal')
nnoremap ! :<c-u>WhichKey '!'<CR>
vnoremap ! :<c-u>WhichKeyVisual '!'<CR>

" Bundle Install
nnoremap !b :below new \| resize 10 \| terminal bundle install<CR>
call extend(g:which_key_map_terminal, {'b':'Bundle Install'})

" Run tests(whole file)
nnoremap !t :call ExecuteRubyMapping('!t', 'all')<CR>
call extend(g:which_key_map_terminal, {'t':'Run tests(whole file)'})

" Run tests(current line)
nnoremap !T :call ExecuteRubyMapping('!T', 'all')<CR>
call extend(g:which_key_map_terminal, {'T':'Run tests(current line)'})

" reload rails
nnoremap !re :call ExecuteRubyMapping('!re', 'all')<CR>
call extend(g:which_key_map_terminal, {'re':'reload rails'})

" Sends rails console
nnoremap !rc :call ExecuteRubyMapping('!rc', 'all')<CR>
call extend(g:which_key_map_terminal, {'rc':'Sends rails console'})

" Open console
nnoremap !c :call ExecuteRubyMapping('!c', 'all')<CR>
call extend(g:which_key_map_terminal, {'c':'Open console'})

" Promp Vimux
nnoremap !! :VimuxPromptCommand<CR>
call extend(g:which_key_map_terminal, {'!':'Promp Vimux'})

" Run selection in Tmux 
xnoremap !! vy :call VimuxSlime()<CR>

" Run last command
nnoremap !l :VimuxRunLastCommand<CR> :echo g:VimuxLastCommand<CR>
call extend(g:which_key_map_terminal, {'l':'Run last command'})

" Sends exit
nnoremap !x :call ExecuteRubyMapping('!x', 'all')<CR>
call extend(g:which_key_map_terminal, {'x':'Sends exit'})

" Select all occurences of the word and display a counter
nnoremap * :%s/\<<C-r><C-w>\>//n<cr>0N

" Selecte pasted text
nnoremap <expr> gp '`['.strpart(getregtype(), 0, 1).'`]'
nnoremap N n
nnoremap n N

" Yank until end of line
nnoremap Y y$

" quit
nnoremap q :<C-U>:quit<CR>

" Toggle fold
nnoremap <return> za

" Select blocks after indenting
xnoremap < <gv

" Select blocks after indenting
xnoremap > >gv|

" Record macro
nnoremap Q q
nmap [g <Plug>(coc-diagnostic-prev)
nmap ]g <Plug>(coc-diagnostic-next)

" Quick save
nnoremap ;w :w<CR>

" Find by 2 chars(forward)
nmap f <Plug>Sneak_f

" Find by 2 chars(backward)
nmap F <Plug>Sneak_F

" Remap move DOWN on suggestions
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"

" Remap move UP on suggestions
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"


" ----------------------------------------------------------------
" Namespace Resize
" 
" ----------------------------------------------------------------

" Resize up
nnoremap <Up> :resize +2<CR>

" Resize down
nnoremap <Down> :resize -2<CR>

" Resize left
nnoremap <Left> :vertical resize +10<CR>

" Resize right
nnoremap <Right> :vertical resize -10<CR>


" ----------------------------------------------------------------
" Prefix Git
" Key g
" Git and Github commands
" ----------------------------------------------------------------
let g:which_key_map_git = { 'name' : '+Git' }
call which_key#register('g', 'g:which_key_map_git')
nnoremap g :<c-u>WhichKey 'g'<CR>
vnoremap g :<c-u>WhichKeyVisual 'g'<CR>

" Add and Commit
nnoremap gac :call VimuxRunCommand('git add . && git commit')<CR>
call extend(g:which_key_map_git, {'ac':'Add and Commit'})

" Add and Commit
nnoremap gd :G diff %<cr><CR>
call extend(g:which_key_map_git, {'d':'Add and Commit'})

" Add and Commit
nnoremap gb :G blame <cr><CR>
call extend(g:which_key_map_git, {'b':'Add and Commit'})

" Work around for keeping g a prefix for Git
nnoremap gg :1<CR>

" Smooth scrolling
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>

" Smooth scrolling
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>

" Smooth scrolling
nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 4)<CR>

" Smooth scrolling
nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -4)<CR>

" Easymotion
nmap / <Plug>(easymotion-overwin-f2)


" ----------------------------------------------------------------
" Commands
" ----------------------------------------------------------------

" Replace tabs to specs of the current file
command! Retab :set expandtab | retab

" Funtion for FZF
command! -bang Args call fzf#run(fzf#wrap('args', {'source': argv()}, <bang>0))

" Reload command
command! Reload :so ~/.config/nvim/init.vim
