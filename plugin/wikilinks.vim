if exists('g:loaded_wikilinks_vim')
    finish
endif
let g:loaded_wikilinks_vim = 1

let g:wikilinks_vim_register = 'w'

function! FollowWikiStyleLink()
    call setreg(g:wikilinks_vim_register, []) " clear register

    execute 'normal! "' . g:wikilinks_vim_register . 'yi['
    let l:link= substitute(getreg(g:wikilinks_vim_register), '[\[\]]', '', 'ge')

    " User may have called outside of square brackets
    if len(l:link) != 0
        let l:file= substitute(execute('echo l:link'), '[\n\t]', ' ', 'ge') . '.md'
        execute 'edit ' . l:file
    else
        echo 'Sorry, not a wiki-style link.'
    endif
endfunction

if exists('g:wikilinks_map_key')
    filetype plugin on
    execute 'autocmd FileType markdown nnoremap <buffer>' g:wikilinks_map_key ':call FollowWikiStyleLink()<CR>'
endif
