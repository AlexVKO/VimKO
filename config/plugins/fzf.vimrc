let $FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!**/node_modules/*" --glob "!*.png" --glob "!/tmp/*" --glob "!/plugged/*" --glob "!**/*.beam" --glob "!/deps/*"'

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --literal --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)

let g:fzf_buffers_jump = 1
let g:rg_highlight = 1
