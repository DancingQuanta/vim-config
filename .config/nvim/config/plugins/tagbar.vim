
let g:tagbar_width = 40

" Javascript
if executable('jsctags')
  let g:tagbar_type_javascript = { 'ctagsbin': 'jsctags' }
endif

" Add support for markdown files in tagbar.
if exists("g:python3_scripts") && !empty("g:python3_scripts")
  let g:markdown2ctagsbin = g:python3_scripts.'/markdown2ctags'
elseif exists("g:python2_scripts") && !empty("g:python2_scripts")
  let g:markdown2ctagsbin = g:python2_scripts.'/markdown2ctags'
endif
if exists("g:markdown2ctagsbin") && executable(g:markdown2ctagsbin)
  let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : g:markdown2ctagsbin,
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
      \ 's:sections',
      \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
      \ 's' : 'section',
    \ },
    \ 'sort': 0,
  \ }
endif
