
" Citation variables
call denite#custom#var('citation', 'cache_path', $VARPATH)
call denite#custom#var('citation', 'mode', 'zotero')
call denite#custom#var('citation', 'zotero_version', '5')
call denite#custom#var('citation', 'zotero_path', "/mnt/c/Users/andre/Zotero")
call denite#custom#var('citation', 'zotero_attachment_path', "/mnt/c/Users/andre/OneDrive/papers")

" Open file from denite buffer via keymap
call denite#custom#map('normal', '<C-o>',
			\ '<denite:do_action:open>', 'noremap')
call denite#custom#map('insert', '<C-o>',
			\ '<denite:do_action:open>', 'noremap')

" Kay mapping

nnoremap <silent><LocalLeader>c :<C-u>Denite -buffer-name=citation-start-insert -default-action=append citation:key<cr>
nnoremap <silent><LocalLeader>co :<C-u>DeniteCursorWord -default-action=open -immediately citation:file<cr>
nnoremap <silent><LocalLeader>cu :<C-u>DeniteCursorWord -default-action=open -immediately citation:url<cr>
nnoremap <silent><LocalLeader>cd :<C-u>DeniteCursorWord -default-action=directory -immediately citation:file<cr>
nnoremap <silent><LocalLeader>cp :<C-u>DeniteCursorWord -default-action=preview -immediately citation:combined<cr>
