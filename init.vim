" vim:et sw=2 ts=2 fdm=marker
" Author: voldikss <dyzplus@gmail.com>
" GitHub: https://github.com/voldikss

" Global Variables: {{{
" IndentCont:
let g:vim_indent_cont = 2
" BuiltinPlugin:
let g:loaded_2html_plugin      = 1
let g:loaded_logiPat           = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_gzip              = 1
let g:loaded_man               = 1
let g:loaded_rrhelper          = 1
let g:loaded_shada_plugin      = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_tarPlugin         = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_zipPlugin         = 1
let g:loaded_netrwPlugin       = 1
" HostProg:
if has('win32') || has('win64') || has('win32unix')
  let g:python3_host_prog='C:\Program Files\Python36/python.exe'
else
  let g:python3_host_prog='/usr/bin/python3'
endif
" NeoVimTerminalColors:
let g:terminal_color_0  = '#282828'
let g:terminal_color_1  = '#cc241d'
let g:terminal_color_2  = '#00ffff'
let g:terminal_color_3  = '#d79921'
let g:terminal_color_4  = '#458588'
let g:terminal_color_5  = '#b16286'
let g:terminal_color_6  = '#689d6a'
let g:terminal_color_7  = '#a89984'
let g:terminal_color_8  = '#928374'
let g:terminal_color_9  = '#fb4934'
let g:terminal_color_10 = '#00df5f'
let g:terminal_color_11 = '#fabd2f'
let g:terminal_color_12 = '#00afff'
let g:terminal_color_13 = '#d3869b'
let g:terminal_color_14 = '#8ec07c'
let g:terminal_color_15 = '#ebdbb2'
" Others:
let g:winmgr_only_one_win = 0
" }}}

" Basic: {{{
" file & directory & format
set history=2000
set pumheight=15
set updatetime=100
set autoread
set autowrite
set nobackup
set noswapfile
set nowritebackup
set undodir=$HOME/.cache/nvim/undo_dir/
set undofile
set isfname-==
set encoding=utf-8
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac
set nrformats=
set hidden
set nowrap
set fileignorecase
set formatoptions+=m
set formatoptions+=B
set dictionary+=~/.vim/dict/dictionary.txt
set nospell
set spellfile=~/.vim/spell/en.utf-8.add
set tags=./tags;,tags
set tagfunc=CocTagFunc
" key
set ttimeout
set timeoutlen=500
set ttimeoutlen=20
set mouse=a
set selectmode=mouse
set clipboard=unnamed
set backspace=2
set backspace=eol,start,indent
set whichwrap=b,s,<,>,[,]
set completeopt-=menu
set completeopt+=menuone   " Show the completions UI even with only 1 item
set completeopt-=longest   " Don't insert the longest common text
set completeopt-=preview   " Hide the documentation preview window
set completeopt+=noinsert  " Don't insert text automatically
set completeopt-=noselect  " Highlight the first completion automatically
set modeline
" style
set display=lastline
set termguicolors
set guicursor=
set pumheight=15
set title
set ruler
set cursorline
set laststatus=2
set showtabline=2
set guioptions-=e
set shortmess+=c
set shortmess-=S
set scrolloff=6
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
colorscheme molokai
" match & search
set showmatch
set matchtime=0
set matchpairs+=<:>
set matchpairs+=《:》
set matchpairs+=（:）
set matchpairs+=【:】
set matchpairs+=“:”
set matchpairs+=‘:’
set hlsearch
set incsearch
set ignorecase
set smartcase
" tab & space & indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set shiftround
set relativenumber number
set foldlevel=99
set foldmethod=indent
set conceallevel=0
set autoindent
set smartindent
set cpoptions+=I
" command window
set wildmode=longest,full
set wildmenu
set wildignorecase
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=__pycache__,.stversions,*.spl,*.out,%*
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
" neovim only
if matchstr(execute('silent version'), 'NVIM v\zs[^\n-]*') >= '0.4.0'
  set shada='20,<50,s10
  set inccommand=nosplit
  set wildoptions+=pum
  set signcolumn=yes:1
  set pumblend=10
endif
" }}}

" Plugin: {{{
call plug#begin('~/.cache/nvim/plugged')
" Languages
Plug 'HerringtonDarkholme/yats.vim'
Plug 'alvan/vim-closetag', {'for': ['html', 'xml']}
Plug 'fatih/vim-go'
Plug 'iamcco/markdown-preview.nvim', {'for': 'markdown', 'do': 'cd app && npm install'}
Plug 'lervag/vimtex'
Plug 'numirias/semshi', {'for': 'python'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'posva/vim-vue', {'for': 'vue'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'tpope/vim-dadbod', {'for': ['sql', 'mysql']}
Plug 'vim-python/python-syntax'
" Completion
Plug 'neoclide/coc.nvim', {'do': 'npm install'}
" Style
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'guns/xterm-color-table.vim', {'on': 'XtermColorTable'}
Plug 'itchyny/lightline.vim'
Plug 'kshenoy/vim-signature'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'mhinz/vim-startify', {'on': 'Startify'}
Plug 'ryanoasis/vim-devicons'
" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
" Others
Plug 'brglng/vim-im-select', {'on': 'ImSelectEnable'}
" Plug 'puremourning/vimspector'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'andrewradev/sideways.vim', {'on': ['SidewaysLeft', 'SidewaysRight']}
Plug 'foosoft/vim-argwrap', {'on': '<Plug>(ArgWrapToggle)'}
Plug 'junegunn/vader.vim'
Plug 'junegunn/vim-easy-align', {'on': '<Plug>(EasyAlign)'}
Plug 'junegunn/vim-peekaboo'
Plug 'kristijanhusak/vim-carbon-now-sh', {'on': 'CarbonNowSh'}
Plug 'voldikss/vim-mark', {'on': '<Plug>MarkSet'}
Plug 'liuchengxu/vista.vim'
Plug 'matze/vim-move'
Plug 'simnalamburt/vim-mundo', {'on': 'MundoToggle'}
Plug 'skywind3000/asyncrun.vim', {'on': ['AsyncRun', 'AsyncStop'] }
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/vim-dict'
Plug 'tommcdo/vim-exchange'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-browser-search'
Plug 'voldikss/vim-codelf'
Plug 'voldikss/vim-floaterm'
Plug 'voldikss/vim-fnote'
Plug 'voldikss/vim-hello-word'
Plug 'voldikss/vim-translator'
Plug 'wellle/targets.vim'
Plug 'yianwillis/vimcdoc'
call plug#end()
" }}}

" Autocmds: {{{
" autocmd CmdlineEnter * call feedkeys("\<C-p>")
augroup ParenColor
  autocmd!
  autocmd VimEnter,BufWinEnter *
    \ if index(['html', 'htmldjango', 'tex', 'mma', 'vue', 'xml'], &filetype) < 0 |
      \ syntax match paren1 /[{}]/   | hi paren1 guifg=#FF00FF |
      \ syntax match paren2 /[()]/   | hi paren2 guifg=#DF8700 |
      \ syntax match paren3 /[<>]/   | hi paren3 guifg=#0087FF |
      \ syntax match paren4 /[\[\]]/ | hi paren4 guifg=#00FF5F |
    \ endif
augroup END

augroup FileTypeAutocmds
  autocmd!
  autocmd FileType startify nmap <buffer> l <CR>
  autocmd FileType floaterm setlocal nocursorline
  autocmd FileType help setlocal number
  autocmd FileType * set formatoptions-=cro
augroup END

augroup UserAutoSaveBuffer
  autocmd!
  autocmd FocusLost,InsertLeave * call userfunc#file#AutoSave()
augroup END

augroup UserLineNumber
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup END

" augroup UserEqualWindowSize
"   autocmd!
"   autocmd VimResized * exec "normal \<C-w>="
" augroup END

augroup UserJumpToLastPosition
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") && &filetype != 'gitcommit' |
      \ exe "normal! g'\"" |
    \ endif
augroup END

augroup UserKeywordHighlight
  autocmd!
  autocmd Syntax *
    \ call matchadd('Special', '\W\zs\(@TODO\|@FIXME\|@CHANGED\|@XXX\|@BUG\|@HACK\)') |
    \ call matchadd('Special', '\W\zs\(@todo\|@fixme\|@changed\|@xxx\|@bug\|@hack\)') |
    \ call matchadd('Special', '\W\zs\(@NOTE\|@INFO\|@IDEA\|@NOTICE\|@TMP\)') |
    \ call matchadd('Special', '\W\zs\(@note\|@info\|@idea\|@notice\|@tmp\)') |
    \ call matchadd('Special', '\W\zs\(@DEBUG\|@Debug\|@debug\)') |
    \ call matchadd('Special', '\W\zs\(@VOLDIKSS\|@voldikss\)')
augroup END

augroup UserAutoChangeDir
  autocmd!
  autocmd BufEnter * silent! lcd %:p:h
augroup END

augroup UserAutoTemplate
  autocmd!
  autocmd BufNewFile .gitignore,.tasks,.clang-format CocCommand template.templateTop
augroup END

augroup UserChecktime
  autocmd!
  autocmd FocusGained * checktime
augroup END

augroup UserCocAutocmds
  autocmd!
  autocmd User Startified setlocal buflisted
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup END

augroup UserStartifyAutocmds
  autocmd!
  autocmd User Startified setlocal buflisted
augroup END

" augroup AutoNohlsearch
"   autocmd!
"   autocmd CursorMoved * call userfunc#myhlsearch#start_hl()
" augroup END

augroup CocExplorerCustom
  autocmd!
  autocmd FileType coc-explorer setlocal relativenumber
  autocmd BufEnter *
    \ if &ft == 'coc-explorer'
    \ | call CocAction('runCommand', 'explorer.doAction', 'closest', ['refresh'])
    \ | endif
augroup END

if has('nvim')
augroup UserTermSettings " neovim only
  autocmd!
  autocmd TermOpen *
    \ setlocal signcolumn=no |
    \ setlocal nobuflisted |
    \ setlocal nospell |
    \ setlocal modifiable |
    \ nmap <silent><buffer> <Esc> <Cmd>hide<CR>|
    \ nmap <silent><buffer> q :q<CR> |
    \ hi TermCursor guifg=yellow |
    \ call timer_start(10, 'userfunc#asyncrun#term_style')
augroup END

function! s:OnColorSchemeLoaded() abort
  let s:scl_guibg = matchstr(execute('hi SignColumn'), 'guibg=\zs\S*')
  if empty(s:scl_guibg) | let s:scl_guibg = 'NONE' | endif
  exe 'hi GitAdd                guifg=#00FF00 guibg=' . s:scl_guibg
  exe 'hi GitModify             guifg=#00FFFF guibg=' . s:scl_guibg
  exe 'hi GitDeleteTop          guifg=#FF2222 guibg=' . s:scl_guibg
  exe 'hi GitDeleteBottom       guifg=#FF2222 guibg=' . s:scl_guibg
  exe 'hi GitDeleteTopAndBottom guifg=#FF2222 guibg=' . s:scl_guibg
  exe 'hi CocHintSign           guifg=#15aabf guibg=' . s:scl_guibg
  exe 'hi CocInfoSign           guifg=#fab005 guibg=' . s:scl_guibg
  exe 'hi CocWarningSign        guifg=#ff922b guibg=' . s:scl_guibg
  exe 'hi CocErrorSign          guifg=#ff0000 guibg=' . s:scl_guibg
  exe 'hi CursorLineNr          guibg=' . s:scl_guibg
  exe 'hi MyBookmarkSign        guifg=#0000FF guibg=' . s:scl_guibg
  exe 'hi NonText               guifg=' . s:scl_guibg
  " coclist will(might) change my cursor highlight
  hi Cursor gui=reverse guifg=NONE guibg=NONE
endfunction
call s:OnColorSchemeLoaded()
augroup UserGitSignColumnColor
  autocmd!
  autocmd ColorScheme * call s:OnColorSchemeLoaded()
augroup END
endif

" }}}

" Abbrevs: {{{
function! s:SetCommandAbbrs(from, to)
  exec 'cnoreabbrev <expr> '.a:from
    \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
    \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction
call s:SetCommandAbbrs('ar', 'AsyncRun')
call s:SetCommandAbbrs('as', 'AsyncStop')
call s:SetCommandAbbrs('at', 'AsyncTask')
call s:SetCommandAbbrs('ca', 'CocAction')
call s:SetCommandAbbrs('cc', 'CocConfig')
call s:SetCommandAbbrs('cf', 'CocFix')
call s:SetCommandAbbrs('ci', 'CocInstall')
call s:SetCommandAbbrs('cl', 'CocList')
call s:SetCommandAbbrs('cm', 'CocCommand')
call s:SetCommandAbbrs('cr', 'CocRestart')
call s:SetCommandAbbrs('cs', 'CocSearch')
call s:SetCommandAbbrs('cu', 'CocUninstall')
call s:SetCommandAbbrs('gap', 'Git add -p')
call s:SetCommandAbbrs('gc', 'Gcommit -v')
call s:SetCommandAbbrs('gca', 'Gcommit --amend -v')
call s:SetCommandAbbrs('gco', 'AsyncRun git checkout .')
call s:SetCommandAbbrs('gd', 'Gvdiff')
call s:SetCommandAbbrs('gl', 'Git lg')
call s:SetCommandAbbrs('gpull', 'AsyncRun git pull')
call s:SetCommandAbbrs('gpush', 'AsyncRun git push')
call s:SetCommandAbbrs('gs', 'Gstatus')
call s:SetCommandAbbrs('gw', 'Gw')
call s:SetCommandAbbrs('pc', 'PlugClean')
call s:SetCommandAbbrs('pi', 'PlugInstall')
call s:SetCommandAbbrs('pu', 'PlugUpdate')
call s:SetCommandAbbrs('sl', 'CocCommand session.load default')
call s:SetCommandAbbrs('ss', 'CocCommand session.save default')
call s:SetCommandAbbrs('st', 'Startify')
call s:SetCommandAbbrs('sw', 'SwitchWindow')
call s:SetCommandAbbrs('tm', 'TabMessage')
call s:SetCommandAbbrs('w!!', '%!sudo tee >/dev/null %')
" }}}

" Commands: {{{
command! -nargs=0 AutoFormat call userfunc#file#AutoFormat()
command! -nargs=0 OpenFileExplorer call userfunc#utils#OpenFileExplorer()
command! -nargs=0 CloseNoBuflistedBuffers call userfunc#buffer#CloseNoBuflistedBuffers()
command! -nargs=0 CloseNoCurrentBuffers call userfunc#buffer#CloseNoCurrentBuffers()
command! -nargs=0 CloseNoDisplayedBuffers call userfunc#buffer#CloseNoDisplayedBuffers()
command! -nargs=* Zeal call userfunc#utils#Zeal(<q-args>)
command! -nargs=? Bline call userfunc#utils#DelimiterLine('bold', <f-args>)
command! -nargs=? Cline call userfunc#utils#DelimiterLine('comment', <f-args>)
command! -nargs=? Line call userfunc#utils#DelimiterLine('light', <f-args>)
command! -nargs=? RenameFile call userfunc#file#Rename(<q-args>)
command! -nargs=? RemoveFile call userfunc#file#Remove()
command! -nargs=* SyntaxAt call userfunc#utils#SyntaxAt(<f-args>)
command! -nargs=+ Grep  call userfunc#utils#Grep(<q-args>)
command! -nargs=+ -complete=file  BrowserOpen  call userfunc#utils#BrowserOpen(<q-args>)
command! -nargs=+ -complete=command  TabMessage call userfunc#utils#TabMessage(<q-args>)
command! -nargs=? -complete=customlist,userfunc#quickrun#Complete QuickRun call userfunc#quickrun#Run(<f-args>)
command! -nargs=+ -complete=customlist,userfunc#window#Complete SwitchWindow call userfunc#window#SwitchWindow(<q-args>)
command! -nargs=0 YarnWatch call floaterm#new(0, 'yarn watch', {}, {
  \ 'on_stdout': function('userfunc#floaterm#WatchCallback'),
  \ 'on_stderr': function('userfunc#floaterm#WatchCallback'),
  \ 'on_exit': function('userfunc#floaterm#WatchCallback')
  \ })
" }}}

" Mappings: {{{
let mapleader   = ';'
let g:mapleader = ';'
noremap  H  ^
noremap  L  $
" Esc:
inoremap <C-c> <C-R>=userfunc#keymap#Insert_ESC()<CR>
inoremap <C-[> <C-R>=userfunc#keymap#Insert_ESC()<CR>
inoremap <Esc> <C-r>=userfunc#keymap#Insert_ESC()<CR>
"cannot use noremap
nmap     M  %
omap     M  %
xmap     M  %
noremap  U  <C-R>
noremap  '  `
vnoremap <  <gv
vnoremap >  >gv
noremap <C-u> <C-u>zz
noremap <C-d> <C-d>zz
" Move:
nnoremap <silent> [[  :<C-u>call userfunc#keymap#Square_Brackets_Left()<CR>
nnoremap <silent> ]]  :<C-u>call userfunc#keymap#Square_Brackets_Right()<CR>
vnoremap <silent> [[  {j
vnoremap <silent> ]]  }k
" Jump:
noremap <silent> <C-j>      <C-]>
noremap <silent> <C-k>      :<C-u>call userfunc#coc#ShowDocument()<CR>
nnoremap <silent> <C-w><C-j> <C-W>v<C-]>zz
nnoremap <silent> <C-w><C-o> :<C-u>call userfunc#utils#Return()<CR>
" Search:
" use set shortmess-=S to display searchindex
nnoremap <silent> n  nzz
nnoremap <silent> N  Nzz
nnoremap * m`:keepjumps normal! *``zz<cr>
nnoremap # #zz
xnoremap * :<C-u>call userfunc#keymap#VisualStarSearch('/')<CR>/<C-R>=@/<CR><CR>N
xnoremap # :<C-u>call userfunc#keymap#VisualStarSearch('?')<CR>?<C-R>=@/<CR><CR>n
" TextObject:
" whole buffer
xnoremap <silent> ie GoggV
onoremap <silent> ie :normal vie<CR>
" line
xnoremap <silent> il g_o^
onoremap <silent> il :normal vil<CR>
xnoremap <silent> al $o0
onoremap <silent> al :normal val<CR>
" block comment
xnoremap i? [*o]*
onoremap i? :<C-u>normal va?V<CR>
" url
xnoremap <silent> iu :<C-u>call userfunc#textobj#url()<CR>
onoremap <silent> iu :normal viu<CR>
" ip
xnoremap <silent> iI :<C-u>call userfunc#textobj#ip()<CR>
onoremap <silent> iI :normal viI<CR>
" number
xnoremap <silent> in :<C-u>call userfunc#textobj#number()<CR>
onoremap <silent> in :normal vin<CR>
" function argument
xnoremap <silent> ia :<C-u>call userfunc#textobj#arguments(1, 1)<CR>
xnoremap <silent> aa :<C-u>call userfunc#textobj#arguments(0, 1)<CR>
onoremap <silent> ia :<C-u>call userfunc#textobj#arguments(1, 0)<CR>
onoremap <silent> aa :<C-u>call userfunc#textobj#arguments(0, 0)<CR>
" BufferOperation:
nnoremap <expr> <silent> <C-h>  (&filetype == 'floaterm') ? ':FloatermPrev<CR>' : ':bprev<CR>'
nnoremap <expr> <silent> <C-l>  (&filetype == 'floaterm') ? ':FloatermNext<CR>' : ':bnext<CR>'
" tnoremap <expr> <silent> <C-h>  (&filetype == 'floaterm') ? '<C-\><C-n>:FloatermPrev<CR>' : '<C-\><C-n>:bprev<CR>'
" tnoremap <expr> <silent> <C-l>  (&filetype == 'floaterm') ? '<C-\><C-n>:FloatermNext<CR>' : '<C-\><C-n>:bnext<CR>'
" TabOperation:
noremap  <silent> <C-t> <Esc>:tabnew<CR>
" TextCopy:
nnoremap Y y$
nnoremap <silent> <Leader>y "+yy
vnoremap <silent> <Leader>y "+y
nnoremap <silent> <Leader>Y "+y$
nnoremap <silent> <Leader>p "+p
nnoremap <silent> <Leader>P "+P
vnoremap <silent> <Leader>Y :<C-u>call userfunc#keymap#incyank()<CR>
vnoremap <silent> <Leader>D :<C-u>call userfunc#keymap#incdelete()<CR>
" InsertMode: move
inoremap <silent> <C-k> <Up>
inoremap <silent> <C-j> <Down>
" snoremap <silent> <C-j> <Down>
inoremap <silent> <C-h> <Left>
inoremap <silent> <C-l> <Right>
inoremap <silent> <C-b> <C-r>=userfunc#keymap#Exec('normal! b')<CR>
inoremap <silent> <C-f> <C-r>=userfunc#keymap#Exec('normal! w')<CR>
inoremap <silent> <C-a> <Home>
inoremap <silent> <C-e> <End>
inoremap <silent> <C-o> <End><CR>
inoremap <silent> <M-o> <Esc>O
inoremap <silent> <C-d> <Esc>ddi

nnoremap <silent>       <Leader>w :w<CR>
nnoremap <silent>       <Leader>W :wa<CR>
nnoremap <silent>       <Leader>q q
nnoremap <silent>       <Leader>Q Q
nnoremap <silent>       q         :q!<CR>
nnoremap <silent>       Q         :qa!<CR>
nnoremap <silent><expr> <Leader>d userfunc#keymap#Normal_q()
" nnoremap <silent> <Leader>Q :qa!<CR>
" noremap  <silent> <Leader>d :bp<bar>sp<bar>bn<bar>bd!<bar>:redraw!<CR>
" QuickMessage:
nnoremap <silent> <Leader>m :messages<CR>
nnoremap <silent> <Leader>t :TabMessage messages<CR>
" CommandMode:
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <S-Left>
cnoremap <C-f> <S-Right>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
" cnoremap <expr> '    userfunc#keymap#Command_Pairs("''")
cnoremap <expr> <    userfunc#keymap#Command_Pairs('<>')
" cnoremap <expr> (    userfunc#keymap#Command_Pairs('()')
cnoremap <expr> [    userfunc#keymap#Command_Pairs('[]')
cnoremap <expr> {    userfunc#keymap#Command_Pairs('{}')
cnoremap <expr> <BS> userfunc#keymap#Command_BS()
" TerminalMode:
tnoremap <Esc>  <C-\><C-n>
" tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
if has('win32') || has('win64')
  nnoremap <silent> <Leader>n :vert term<CR>
  nnoremap <silent> ,n        :term<CR>
else
  nnoremap <silent> <Leader>n :vsplit term://zsh<CR>
  nnoremap <silent> ,n        :edit term://zsh<CR>
endif
" WindowOperation:
if has('nvim')
  nnoremap <M-h> <C-w>h
  nnoremap <M-j> <C-w>j
  nnoremap <M-k> <C-w>k
  nnoremap <M-l> <C-w>l
  inoremap <M-h> <Esc><C-w>h
  inoremap <M-j> <Esc><C-w>j
  inoremap <M-k> <Esc><C-w>k
  inoremap <M-l> <Esc><C-w>l
  tnoremap <M-h> <C-\><C-n><C-w>h
  tnoremap <M-j> <C-\><C-n><C-w>j
  tnoremap <M-k> <C-\><C-n><C-w>k
  tnoremap <M-l> <C-\><C-n><C-w>l
  cnoremap <expr> <C-n>  pumvisible() ? '<Right>' : '<Down>'
  cnoremap <expr> <C-p>  pumvisible() ? '<Left>' : '<Up>'
  cnoremap <expr> <Up>   pumvisible() ? '<C-p>' : '<up>'
  cnoremap <expr> <Down> pumvisible() ? '<C-n>' : '<down>'
  inoremap <silent> <M-]> <C-R>=userfunc#keymap#FlyOutPairs(']')<CR>
  inoremap <silent> <M-}> <C-R>=userfunc#keymap#FlyOutPairs('}')<CR>
  inoremap <silent> <M-)> <C-R>=userfunc#keymap#FlyOutPairs(')')<CR>
endif
" WindowSize:
if has('nvim')
  nnoremap <M-up>    <C-w>+
  nnoremap <M-down>  <C-w>-
  nnoremap <M-left>  <C-w>5<
  nnoremap <M-right> <C-w>5>
  inoremap <M-up>    <Esc><C-w>+
  inoremap <M-down>  <Esc><C-w>-
  inoremap <M-left>  <Esc><C-w>5<
  inoremap <M-right> <Esc><C-w>5>
endif
" ClearnSearchHighlight:
if has('nvim')
  nnoremap <Esc>      <Cmd>nohlsearch<bar>echo<CR>
endif
nnoremap <silent> <BS>            :noh<bar>echo ''<CR>

noremap  <silent> <F2>             <Esc>:SwitchWindow coc-explorer<CR>
noremap! <silent> <F2>             <Esc>:SwitchWindow coc-explorer<CR>
tnoremap <silent> <F2>             <C-\><C-n>:SwitchWindow coc-explorer<CR>
noremap  <silent> <F3>             <Esc>:SwitchWindow mundo<CR>
noremap! <silent> <F3>             <Esc>:SwitchWindow mundo<CR>
tnoremap <silent> <F3>             <C-\><C-n>:SwitchWindow mundo<CR>
noremap  <silent> <F4>             <Esc>:OpenFileExplorer<CR>
noremap  <silent> <F5>             <Esc>:QuickRun<CR>
noremap! <silent> <F5>             <Esc>:QuickRun<CR>
noremap  <silent> <Leader>x        <Esc>:QuickRun<CR>
noremap  <silent> <Leader><Space>  <Esc>:SwitchWindow qf<CR>
" tnoremap <silent> <Leader><Space>  <C-\><C-n>:SwitchWindow qf<CR>
noremap  <silent> <F6>             <Esc>:AutoFormat<CR>
noremap  <silent> <Leader><Leader> <Esc>:AutoFormat<CR>
noremap! <silent> <F6>             <Esc>:AutoFormat<CR>
noremap  <silent> <F10>            <Esc>:SwitchWindow vista<CR>
noremap! <silent> <F10>            <Esc>:SwitchWindow vista<CR>
tnoremap <silent> <F10>            <C-\><C-n>:SwitchWindow vista<CR>
noremap  <silent> <F12>            <Esc>:SwitchWindow floaterm<CR>
noremap! <silent> <F12>            <Esc>:SwitchWindow floaterm<CR>
tnoremap <silent> <F12>            <C-\><C-n>:SwitchWindow floaterm<CR>
nnoremap <expr>   <CR>             userfunc#keymap#Normal_CR() . "\<Esc>"
inoremap <expr>   <CR>             userfunc#keymap#Insert_CR()
inoremap <expr>   <BS>             userfunc#keymap#Insert_BS()
" }}}

" Plugin Config: {{{
" octol/vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight                  = 1
let g:cpp_member_variable_highlight              = 1
let g:cpp_class_decl_highlight                   = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight                     = 1
" plasticboy/vim-markdown
let g:vim_markdown_fenced_languages = ['python=py', 'javascript=js', 'c=c']
let g:vim_markdown_conceal             = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:tex_conceal                      = ""
let g:vim_markdown_math                = 1
" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow  = 1
" vim-python/python-syntax
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
" lervag/vimtex
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode = 0
" let g:vimtex_view_method='general'
let g:vimtex_view_method='zathura'
" @todo
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" let g:vimtex_view_general_options_latexmk = '--unique'
let g:vimtex_mappings_enabled = 0
let g:vimtex_fold_enabled = 1
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk_engines = {'_': '-xelatex'}
let g:vimtex_compiler_latexrun_engines = {'_': 'xelatex'}
" iamcco/markdown-preview.nvim
let g:mkdp_auto_close = 0
" numirias/semshi
let g:semshi#always_update_all_highlights = v:true
let g:semshi#error_sign = v:false
" neoclide/coc.nvim
let g:coc_data_home = '~/.config/coc'
nnoremap <silent><expr> <C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
nnoremap <silent><expr> <C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
inoremap <silent><expr> <M-j> coc#util#has_float() ? userfunc#coc#FloatScroll(1) : "\<down>"
inoremap <silent><expr> <M-k> coc#util#has_float() ? userfunc#coc#FloatScroll(0) :  "\<up>"
nmap <expr> <silent> <C-c> <SID>select_current_word_and_go_next()
function! s:select_current_word_and_go_next()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  " based on coc readme, this has been modified
  " because I have mapped * to m`:keepjumps normal! *``zz<cr>
  return "*n\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunction
nmap <silent> <C-s> :CocSearch <C-r><C-w><Cr>
nmap <silent> <M-n> <Plug>(coc-diagnostic-next)
nmap <silent> <M-p> <Plug>(coc-diagnostic-prev)
nmap <silent> <Leader>ca :CocAction<CR>
nmap <silent> <Leader>cd :call userfunc#coc#GoToDefinition()<CR>
nmap <silent> <Leader>ci <Plug>(coc-implementation)
" nmap <silent> gd :call userfunc#coc#GoToDefinition()<CR>
" nmap <silent> gr <Plug>(coc-references)
nmap <silent> <Leader>cf <Plug>(coc-fix-current)
nmap <silent> <Leader>cf <Plug>(coc-fix-current)
nmap <silent> <Leader>rf <Plug>(coc-references)
nmap <silent> <Leader>cr :CocRestart<CR>
nmap <silent> cl :CocList<CR>
nmap <silent> <Leader>ct :CocList tasks<CR>
nmap <silent> ,cr        :call CocAction('rename')<CR>
xmap if <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-a)
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
" coc-git
nmap <expr> <C-up>   &diff==1 ? '[c' : '<Plug>(coc-git-prevchunk)'
nmap <expr> <C-down> &diff==1 ? ']c' : '<Plug>(coc-git-nextchunk)'
nmap <expr> gk       &diff==1 ? '[c' : '<Plug>(coc-git-prevchunk)'
nmap <expr> gj       &diff==1 ? ']c' : '<Plug>(coc-git-nextchunk)'
nnoremap <silent> <Leader>hs :CocCommand git.chunkStage<CR>
nnoremap <silent> <Leader>hu :CocCommand git.chunkUndo<CR>
nnoremap <silent> <Leader>go :CocCommand git.browserOpen<CR>
nnoremap <silent> <Leader>gv :CocCommand git.chunkInfo<CR>
nnoremap <silent> <Leader>gm :CocCommand git.showCommit<CR>
omap ic <Plug>(coc-text-object-inner)
xmap ic <Plug>(coc-text-object-inner)
" coc-pairs
let g:coc_pairs_expand = [['（', '）'], ['“', '”'], ['‘', '’'], ['《', '》']]
" coc-smartf
" nmap f <Plug>(coc-smartf-forward)
" nmap F <Plug>(coc-smartf-backward)
" autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
" autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
" coc-bookmark
nmap <silent> ,b <Plug>(coc-bookmark-toggle)
nmap <silent> ,a <Plug>(coc-bookmark-annotate)
nmap <silent> gh <Plug>(coc-bookmark-prev)
nmap <silent> gl <Plug>(coc-bookmark-next)
" coc-snippets
let g:coc_snippet_next = '<tab>'
" coc extensions
let g:coc_global_extensions = [
  \ 'coc-bookmark',
  \ 'coc-browser',
  \ 'coc-clock',
  \ 'coc-cmake',
  \ 'coc-css',
  \ 'coc-diagnostic',
  \ 'coc-dictionary',
  \ 'coc-ecdict',
  \ 'coc-emmet',
  \ 'coc-emoji',
  \ 'coc-eslint',
  \ 'coc-explorer',
  \ 'coc-floaterm',
  \ 'coc-git',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-java',
  \ 'coc-json',
  \ 'coc-leetcode',
  \ 'coc-lists',
  \ 'coc-marketplace',
  \ 'coc-pairs',
  \ 'coc-post',
  \ 'coc-prettier',
  \ 'coc-python',
  \ 'coc-rainbow-fart',
  \ 'coc-rust-analyzer',
  \ 'coc-snippets',
  \ 'coc-syntax',
  \ 'coc-tag',
  \ 'coc-tasks',
  \ 'coc-template',
  \ 'coc-todolist',
  \ 'coc-translator',
  \ 'coc-vimtex',
  \ 'coc-word',
  \ 'coc-yank'
\ ]
" Yggdroot/indentLine
let g:indentLine_char = '│'
let g:indentLine_enabled = 1
let g:indentLine_color_term = 238
let g:indentLine_fileTypeExclude = ['startify', 'vista', 'json', 'codi', 'vtm', 'jsonc', 'coc-explorer', 'man']
" mhinz/vim-startify
let g:webdevicons_enable_startify = 1
noremap <silent> <Space><Space> <Esc>:Startify<CR>
let g:startify_bookmarks = [
  \ {'c': stdpath('config') . '/coc-settings.json'},
  \ {'v': stdpath('config') . '/init.vim'}
\ ]
let g:startify_files_number = 8
let g:startify_padding_left = 15
" let g:startify_custom_header = [
"   \ '                      ___       ___       ___       ___       ___       ___       ___       ___   ',
"   \ '                     /\__\     /\  \     /\__\     /\  \     /\  \     /\__\     /\  \     /\  \  ',
"   \ '                    /:/ _/_   /::\  \   /:/  /    /::\  \   _\:\  \   /:/ _/_   /::\  \   /::\  \ ',
"   \ '                   |::L/\__\ /:/\:\__\ /:/__/    /:/\:\__\ /\/::\__\ /::-"\__\ /\:\:\__\ /\:\:\__\',
"   \ '                   |::::/  / \:\/:/  / \:\  \    \:\/:/  / \::/\/__/ \;:;-",-" \:\:\/__/ \:\:\/__/',
"   \ '                    L;;/__/   \::/  /   \:\__\    \::/  /   \:\__\    |:|  |    \::/  /   \::/  / ',
"   \ '                               \/__/     \/__/     \/__/     \/__/     \|__|     \/__/     \/__/  ']
if has('nvim')
  highlight StartifyHeader guifg=#FF00FF
  highlight StartifyNumber guifg=#00FF00
  highlight StartifyPath   guifg=#00AFFF
  highlight StartifySlash  guifg=#DF875F
endif
" itchyny/lightline.vim
let g:lightline = {
  \ 'colorscheme': 'aurora',
  \ 'active': {
    \ 'left': [
      \ ['mode', 'paste'],
      \ ['fugitive', 'readonly', 'filename'],
      \ ['absolutepath']
    \ ],
    \ 'right': [
      \ ['asyncrun_status'],
      \ ['lineinfo'],
      \ ['percent'],
      \ ['cocstatus', 'fileformat', 'fileencoding'],
      \ ['filetype'],
      \ ['codelf_status'],
      \ ['translator_status'],
    \ ]
  \ },
  \ 'component': {
    \ 'lineinfo': ' %4l,%-3v',
    \ 'codelf_status': '%{g:codelf_status}',
    \ 'translator_status': '%{g:translator_status}',
    \ 'asyncrun_status': '%{g:asyncrun_status}',
    \ 'close': '%{has("nvim") ? " NVIM 😆" : " VIM "}',
    \ 'vim_logo': "😆 "
  \ },
  \ 'component_function': {
    \ 'mode': 'userfunc#lightline#Mode',
    \ 'fugitive': 'userfunc#lightline#GitBranch',
    \ 'cocstatus': 'coc#status',
    \ 'readonly': 'userfunc#lightline#ReadOnly',
    \ 'filename': 'userfunc#lightline#FileName',
    \ 'fileformat': 'userfunc#lightline#FileFormat',
    \ 'fileencoding': 'userfunc#lightline#FileEncoding',
    \ 'filetype': 'userfunc#lightline#FileType',
    \ 'absolutepath': 'userfunc#lightline#AbsPath'
  \ },
  \ 'tabline': {
    \ 'left': [['vim_logo', 'buffers']],
    \ 'right': [['close']],
    \ 'subseparator': {
      \ 'left': '│',
      \ 'right': '│'
    \ }
  \ },
  \ 'component_expand': { 'buffers': 'lightline#bufferline#buffers' },
  \ 'component_type': { 'buffers': 'tabsel' },
  \ 'subseparator': {
    \ 'left': '│',
    \ 'right': '│'
  \ }
\ }
" mengelbrecht/lightline-bufferline
let g:lightline#bufferline#unnamed = '[No Name]'
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#show_number  = 3
let g:lightline#bufferline#number_map = {
  \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
  \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'
\ }
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
" skywind3000/asyncrun.vim
let g:asyncrun_status = ''  " asyncrun is lazy loaded
let g:asyncrun_open = 9
let g:asyncrun_rootmarks = [
  \ '.git',
  \ '.svn',
  \ '.root',
  \ '.project',
  \ '.hg',
  \ '.idea',
  \ '.gitignore',
  \ 'Makefile',
  \ 'CMakeLists.txt',
  \ '*.pro',
  \ '.tasks'
  \ ]
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
" skywind3000/asynctasks.vim
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_reuse = 1
let g:asynctasks_term_rows = 10
" Yggdroot/LeaderF
nmap <silent> <Leader>fb :Leaderf buffer<CR>
nmap <silent> <Leader>fc :Leaderf cmdHistory<CR>
nmap <silent> <Leader>ff :Leaderf file<CR>
nmap <silent> <Leader>fg :Leaderf rg<CR>
nmap <silent> <Leader>fl :Leaderf line<CR>
nmap <silent> <Leader>fm :Leaderf mru<CR>
nmap <silent> <Leader>ft :Leaderf bufTag<CR>
nmap <silent> <Leader>fu :Leaderf function<CR>
noremap <silent> <Leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent> <Leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <silent> <Leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <silent> <Leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
let g:Lf_CacheDirectory       = expand('~/.cache/nvim')
let g:Lf_CommandMap = {
  \'<Up>': ['<C-p>'],
  \'<Down>': ['<C-n>']
\}
let g:Lf_Ctags                = "/usr/local/bin/ctags"
let g:Lf_DefaultExternalTool = ""
let g:Lf_FilerShowDevIcons = 1
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
let g:Lf_HideHelp             = 1
let g:Lf_IndexTimeLimit       = 10
let g:Lf_MruFileExclude = ['*.so','*.py[c0]','*.exe','*.sw?']
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewResult        = {'Function':0, 'BufTag':0}
let g:Lf_RgConfig = [
  \"--glob=!OmegaOptions.bak",
  \"--glob=!node_modules",
  \"--glob=!lib/index.js",
  \"--glob=!target",
  \"--glob=!tags",
  \"--glob=!build",
  \"--glob=!.git",
  \"--glob=!.ccls-cache",
  \"--no-ignore",
  \"--hidden"
\]
let g:Lf_RootMarkers    = [
  \'.project',
  \'.svn',
  \'.git',
  \'.idea',
  \'.gitignore',
  \'.tasks',
  \'.clang-format',
  \'CMakeLists.txt',
  \'compile_commands.json'
\]
let g:Lf_ShowHidden           = 1
let g:Lf_ShowRelativePath     = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_StlSeparator   = {'left': '', 'right': '', 'font': ''}
let g:Lf_UseVersionControlTool = 0
let g:Lf_WildIgnore = {
  \'dir': [
    \'.svn',
    \'.git',
    \'.hg',
    \'.cache',
    \'.idea',
    \'.ccls-cache',
    \'.android',
    \'.gradle',
    \'.IntelliJIdea*',
    \'node_modules',
    \'build'
  \],
  \'file': [
    \'*.sw?',
    \'~$*',
    \'*.exe',
    \'*.o',
    \'*.so',
    \'*.py[co]'
  \]
\}
let g:Lf_WindowHeight = 0.4
let g:Lf_WorkingDirectoryMode = 'Ac'
" voldikss/vim-browser-search
nmap <silent> <Leader>s <Plug>SearchNormal
vmap <silent> <Leader>s <Plug>SearchVisual
let g:browser_search_engines = {
  \ 'qt': 'https://doc.qt.io/qt-5/search-results.html?q=%s'
  \ }
" voldikss/vim-translator
nmap <silent>    ,t        <Plug>Translate
nmap <silent>    ,w        <Plug>TranslateW
nmap <silent>    ,r        <Plug>TranslateR
vmap <silent>    ,t        <Plug>TranslateV
vmap <silent>    ,w        <Plug>TranslateWV
vmap <silent>    ,r        <Plug>TranslateRV
let g:translator_status = ''
let g:translator_history_enable = 1
let g:translator_default_engines = ['baicizhan', 'bing', 'google', 'haici', 'youdao']
let g:translator_window_max_height = 0.8
let g:translator_window_max_width = 0.8
" voldikss/vim-floaterm
let g:floaterm_width = 0.6
let g:floaterm_height = 0.6
let g:floaterm_position = 'center'
let g:floaterm_gitcommit = 'split'
let g:floaterm_autoclose = v:true
let g:floaterm_autohide = v:true
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
" let g:floaterm_rootmarkers   = ['.git', '.gitignore', '*.pro', 'Cargo.toml']
" hi FloatermNC guibg=skyblue
hi FloatermBorder guifg=orange
command! PythonREPL  :FloatermNew --wintype=normal --width=0.5 --position=right python
" function! s:runner_proc(opts)
"   let curr_bufnr = floaterm#curr()
"   if has_key(a:opts, 'silent') && a:opts.silent == 1
"     call floaterm#hide()
"   endif
"   let cmd = 'cd ' . shellescape(getcwd())
"   call floaterm#terminal#send(curr_bufnr, [cmd])
"   call floaterm#terminal#send(curr_bufnr, [a:opts.cmd])
"   stopinsert
"   if &filetype == 'floaterm' && g:floaterm_autoinsert
"     call floaterm#util#startinsert()
"   endif
" endfunction
" let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
" let g:asyncrun_runner.floaterm = function('s:runner_proc')
" let g:asynctasks_term_pos='floaterm'
" simnalamburt/vim-mundo
let g:mundo_width              = 30
let g:mundo_preview_height     = 10
let g:mundo_right              = 0
let g:mundo_preview_bottom     = 1
let g:mundo_auto_preview_delay = 10
" voldikss/vim-codelf
let g:codelf_status = ''
" lfv89/vim-interestingwords
nmap <silent> <Leader>k <Plug>MarkSet
vmap <silent> <Leader>k <Plug>MarkSet
nmap <silent> <Leader>K <Plug>MarkClear
" tommcdo/vim-exchange
nmap <silent> cx  <Plug>(Exchange)
xmap <silent> X   <Plug>(Exchange)
nmap <silent> cxc <Plug>(ExchangeClear)
nmap <silent> cxx <Plug>(ExchangeLine)
" matze/vim-move
let g:move_map_keys    = 0
let g:move_auto_indent = 1
vmap <silent> J <Plug>MoveBlockDown
vmap <silent> K <Plug>MoveBlockUp
nmap <silent> J <Plug>MoveLineDown
nmap <silent> K <Plug>MoveLineUp
" andrewradev/sideways.vim
nnoremap <silent> <C-left>  :SidewaysLeft<CR>
nnoremap <silent> <C-right> :SidewaysRight<CR>
omap as <Plug>SidewaysArgumentTextobjA
xmap as <Plug>SidewaysArgumentTextobjA
omap is <Plug>SidewaysArgumentTextobjI
xmap is <Plug>SidewaysArgumentTextobjI
" foosoft/vim-argwrap
nmap <silent> <leader>aw <Plug>(ArgWrapToggle)
" junegunn/vim-easy-align
xmap <silent> ga <Plug>(EasyAlign)
nmap <silent> ga <Plug>(EasyAlign)
" puremourning/vimspector
let g:vimspector_enable_mappings = 'HUMAN'
" easymotion.vim
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap <Space>f <Plug>(easymotion-overwin-w)
" brglng/vim-im-select
let g:im_select_enable_focus_events = 0
" }}}
