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
  \ 'google': ['Google', '<leader>g', 'Googlec', '<leader>gc'],
  \ 'scholar': ['Scholar', '<leader>s', 'Scholarc', '<leader>sc'],
  \ 'library': ['Library', '<leader>l', 'Libraryc', '<leader>lc']
  \}
let g:www_sessions = {
  \ 'dev' : ['vim', 'http://stackoverflow.com'],
  \ }
