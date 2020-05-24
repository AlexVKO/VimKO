" Theme configuration
" func! s:setCustomColors()
"   " Editor
"   call one#highlight('Normal',       'abb2bf',  '303034',  '')
"   call one#highlight('TabLineFill',  '',        '303034',  'none')
"   call one#highlight('TabLine',      '676a70',  '47474c',  'none')
"   call one#highlight('TabLineSel',   'FFFFFF',  '303034',  'none')
"   call one#highlight('ColorColumn',  '',        '2d2d30',  'none')

"   " Ruby
"   " call one#highlight('rubyFunction', '',        '',        'bold')
" endfunc

" autocmd ColorScheme * call s:setCustomColors()
"

set termguicolors
let g:airline_theme='alexvko'
colorscheme one
" colorscheme github
let g:one_allow_italics = 1
set background=dark
" set background=light

highlight Normal guibg=none
