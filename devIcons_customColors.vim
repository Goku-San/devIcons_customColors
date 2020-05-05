function! DeviconsColors(config)
  let colors = keys(a:config)

  augroup devicons_colors
    autocmd!

    for color in colors
      exec 'autocmd FileType nerdtree'
        \ 'highlight devicons_'.color.' guifg='.color.''

      exec 'autocmd FileType nerdtree syntax match devicons_'.color.' /\v'.join(a:config[color], '|').'/ containedin=ALL'
    endfor
  augroup END
endfunction

let g:devicons_colors = {
  \'royalblue1': ['', '', '', ''],
  \'darkorange': ['', '', '', '', '', '', '', '', '', '', ''],
  \'yellow': ['', '', ''],
  \'orange': ['', '', '', 'λ', '', ''],
  \'red': ['', '', '', '', '', '', '', '', ''],
  \'magenta1': [''],
  \'violet': ['', '', '', ''],
  \'blue1': ['', '', '', '', '', '', '', '', '', '', '', '', ''],
  \'cyan2': ['', '', '', ''],
  \'lime': ['', '', '', '', '']
\}

call DeviconsColors(g:devicons_colors)

" Color names   hex   from https://jonasjacek.github.io/colors/
" royalblue1  #5f5fff
" darkorange  #ff8700
" yellow      #ffff00
" orange      #ffaf00
" red         #ff0000
" magenta1    #ff00ff
" violet      #af00d7
" blue1       #0000ff
" cyan2       #00ffd7
" lime        #00ff00

" Extensions & Icons
" from https://github.com/ryanoasis/vim-devicons/blob/master/plugin/webdevicons.vim L160-272
"  'styl'     : '',
"  'sass'     : '',
"  'scss'     : '',
"  'htm'      : '',
"  'html'     : '',
"  'slim'     : '',
"  'ejs'      : '',
"  'css'      : '',
"  'less'     : '',
"  'md'       : '',
"  'mdx'      : '',
"  'markdown' : '',
"  'rmd'      : '',
"  'json'     : '',
"  'webmanifest' : '',
"  'js'       : '',
"  'mjs'      : '',
"  'jsx'      : '',
"  'rb'       : '',
"  'php'      : '',
"  'py'       : '',
"  'pyc'      : '',
"  'pyo'      : '',
"  'pyd'      : '',
"  'coffee'   : '',
"  'mustache' : '',
"  'hbs'      : '',
"  'conf'     : '',
"  'ini'      : '',
"  'yml'      : '',
"  'yaml'     : '',
"  'toml'     : '',
"  'bat'      : '',
"  'jpg'      : '',
"  'jpeg'     : '',
"  'bmp'      : '',
"  'png'      : '',
"  'webp'     : '',
"  'gif'      : '',
"  'ico'      : '',
"  'twig'     : '',
"  'cpp'      : '',
"  'c++'      : '',
"  'cxx'      : '',
"  'cc'       : '',
"  'cp'       : '',
"  'c'        : '',
"  'cs'       : '',
"  'h'        : '',
"  'hh'       : '',
"  'hpp'      : '',
"  'hxx'      : '',
"  'hs'       : '',
"  'lhs'      : '',
"  'lua'      : '',
"  'java'     : '',
"  'sh'       : '',
"  'fish'     : '',
"  'bash'     : '',
"  'zsh'      : '',
"  'ksh'      : '',
"  'csh'      : '',
"  'awk'      : '',
"  'ps1'      : '',
"  'ml'       : 'λ',
"  'mli'      : 'λ',
"  'diff'     : '',
"  'db'       : '',
"  'sql'      : '',
"  'dump'     : '',
"  'clj'      : '',
"  'cljc'     : '',
"  'cljs'     : '',
"  'edn'      : '',
"  'scala'    : '',
"  'go'       : '',
"  'dart'     : '',
"  'xul'      : '',
"  'sln'      : '',
"  'suo'      : '',
"  'pl'       : '',
"  'pm'       : '',
"  't'        : '',
"  'rss'      : '',
"  'f#'       : '',
"  'fsscript' : '',
"  'fsx'      : '',
"  'fs'       : '',
"  'fsi'      : '',
"  'rs'       : '',
"  'rlib'     : '',
"  'd'        : '',
"  'erl'      : '',
"  'hrl'      : '',
"  'ex'       : '',
"  'exs'      : '',
"  'eex'      : '',
"  'leex'     : '',
"  'vim'      : '',
"  'ai'       : '',
"  'psd'      : '',
"  'psb'      : '',
"  'ts'       : '',
"  'tsx'      : '',
"  'jl'       : '',
"  'pp'       : '',
"  'vue'      : '﵂',
"  'elm'      : '',
"  'swift'    : '',
"  'xcplayground' : '',
"  'tex'      : 'ﭨ',
"  'r'        : 'ﳒ',
"  'rproj'    : '鉶'
