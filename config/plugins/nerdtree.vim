let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let g:NERDTreeMinimalUI = 1

let NERDTreeIgnore = [
	\ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.svn$',
	\ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$'
	\ ]

" Private helpers {{{
function! s:SID()
    if ! exists('s:sid')
        let s:sid = matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
    endif
    return s:sid
endfunction
let s:SNR = '<SNR>'.s:SID().'_'

call NERDTreeAddKeyMap({
            \ 'key': 'w',
            \ 'callback': s:SNR.'toggle_width',
            \ 'quickhelpText': 'Toggle window width' })

function! s:toggle_width()
    let l:max = 0
    for l:z in range(1, line('$'))
        let l:len = len(getline(l:z))
        if l:len > l:max
            let l:max = l:len
        endif
    endfor
    exe 'vertical resize '.(l:max == winwidth('.') ? g:NERDTreeWinSize : l:max)
endfunction

" Plugin: Smart h/l navigation {{{
" @see https://github.com/jballanc/nerdtree-space-keys
" ---
call NERDTreeAddKeyMap({
            \ 'key':           'l',
            \ 'callback':      s:SNR.'descendTree',
            \ 'quickhelpText': 'open tree and go to first child',
            \ 'scope':         'DirNode' })
call NERDTreeAddKeyMap({
            \ 'key':           'l',
            \ 'callback':      s:SNR.'openFile',
            \ 'quickhelpText': 'open file',
            \ 'scope':         'FileNode' })
call NERDTreeAddKeyMap({
            \ 'key':           'h',
            \ 'callback':      s:SNR.'closeOrAscendTree',
            \ 'quickhelpText': 'close dir or move to parent dir',
            \ 'scope':         'DirNode' })
call NERDTreeAddKeyMap({
            \ 'key':           'h',
            \ 'callback':      s:SNR.'ascendTree',
            \ 'quickhelpText': 'move to parent dir',
            \ 'scope':         'FileNode' })

function! s:descendTree(dirnode)
    call a:dirnode.open()
    call b:NERDTree.render()
    if a:dirnode.getChildCount() > 0
        let chld = a:dirnode.getChildByIndex(0, 1)
        call chld.putCursorHere(0, 0)
    end
endfunction

function! s:openFile(filenode)
    call a:filenode.activate({'reuse': 'all', 'where': 'p'})
endfunction

function! s:closeOrAscendTree(dirnode)
    if a:dirnode.isOpen
        call a:dirnode.close()
        call b:NERDTree.render()
    else
        call s:ascendTree(a:dirnode)
    endif
endfunction

function! s:ascendTree(node)
    let parent = a:node.parent
    if parent != {}
        call parent.putCursorHere(0, 0)
        if parent.isOpen
            call parent.close()
            call b:NERDTree.render()
        end
    end
endfunction
" }}}


" ---
call NERDTreeAddKeyMap({
            \ 'key': 'N',
            \ 'callback': s:SNR.'create_in_path',
            \ 'quickhelpText': 'Create file or dir',
            \ 'scope': 'Node' })

function! s:create_in_path(node)
    if a:node.path.isDirectory && ! a:node.isOpen
        call a:node.parent.putCursorHere(0, 0)
    endif

    call NERDTreeAddNode()
endfunction
" }}}

function! s:closeOrAscendTree(dirnode)
	if a:dirnode.isOpen
		call a:dirnode.close()
		call b:NERDTree.render()
	else
		call s:ascendTree(a:dirnode)
	endif
endfunction

