let g:www_urls = {
  \ 'vim' : 'http://www.vim.org',
  \ }
let g:www_engines = {
  \ 'youtube' : 'https://www.youtube.com/results?search_query=',
  \ 'google'  : 'https://google.co.uk/search?q=',
  \ 'scholar' : 'https://scholar.google.co.uk/scholar?q=',
  \ 'library' : 'http://bath-ac-primo.hosted.exlibrisgroup.com/primo_library/libweb/action/search.do?fn=search&ct=search&initialSearch=true&mode=Basic&tab=local&indx=1&dum=true&srt=rank&vid=44BAT_VU1&frbg=&tb=t&vl%28freeText0%29='
  \ }
let g:www_default_search_engine = 'google'
let g:www_shortcut_engines = {
  \ 'google': ['Google', '<leader>wg', 'Googlec', '<leader>wgc'],
  \ 'scholar': ['Scholar', '<leader>ws', 'Scholarc', '<leader>wsc'],
  \ 'library': ['Library', '<leader>wl', 'Libraryc', '<leader>wlc']
  \}
let g:www_sessions = {
  \ 'dev' : ['vim', 'http://stackoverflow.com'],
  \ }
