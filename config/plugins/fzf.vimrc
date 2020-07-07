let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!**/node_modules/*" --glob "!*.png" --glob "!/tmp/*" --glob "!/plugged/*" --glob "!**/*.beam" --glob "!/deps/*"'

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --literal --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" command! -bang -nargs=? -complete=dir Files
"       \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

let g:fzf_preview_window = 'up:70%'

" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)

let g:fzf_buffers_jump = 1
let g:rg_highlight = 1

" Terminal buffer options for fzf
autocmd! FileType fzf
autocmd  FileType fzf set noshowmode noruler nonu

set winblend=20

hi NormalFloat guibg=None

if exists('g:fzf_colors.bg')
  call remove(g:fzf_colors, 'bg')
endif

if stridx($FZF_DEFAULT_OPTS, '--border') == -1
  let $FZF_DEFAULT_OPTS .= ' --border'
endif

function! FloatingFZF()
  let width = float2nr(&columns * 0.95)
  let height = float2nr(&lines * 0.8)
  let opts = { 'relative': 'editor',
        \ 'row': (&lines - height) / 2,
        \ 'col': (&columns - width) / 2,
        \ 'width': width,
        \ 'height': height }

  call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
endfunction

let g:fzf_layout = { 'window': 'call FloatingFZF()' }
" let g:fzf_layout = { 'tmux': '-p90%,60%' }
