""""""""""""""""""""""""""""""""""""""""""
"    LICENSE: MIT
"     Author: Cosson
"    Version: 0.1 
" CreateTime: 2018-02-28 10:24:04
" LastUpdate: 2018-02-28 10:24:04
"       Desc: neovim init config
""""""""""""""""""""""""""""""""""""""""""

set cul 
set number
set relativenumber
set showcmd
set cmdheight=2
set ruler
set confirm
set scrolloff=0
set tabstop=4
set shiftwidth=4
set clipboard+=unnamedplus " 系统安装xclip或xsel
set hidden
set completeopt=longest,menu 
set updatetime=500
set selection=inclusive "exclusive inclusive old
set nohlsearch
set termguicolors
set background=dark
set cursorline
set cursorcolumn
set mouse=a
"set ignorecase
set smartcase
set fo=""
"set list
"set foldmethod=syntax


" neovim python支持 需要sudo pip3 install --upgrade neovim 
let g:python3_host_prog = '/usr/bin/python3'
let g:python3_host_skip_check = 1
let g:loaded_python_provider = 0

let mapleader=' '

" map
noremap <c-s> :w<cr>
nnoremap <F5> :make<cr>
inoremap <c-s> <esc>:w<cr>
noremap <c-a> :wa<cr>
inoremap <c-a> <esc>:wa<cr>
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w><C-w> <C-\><C-N><C-w><C-w>
tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l
inoremap <c-o> <c-x><c-o>
nnoremap <leader>p :pc<cr>
 

"completion
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

if has("autocmd")   " 打开时光标放在上次退出时的位置
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \   exe "normal g'\"" |
        \ endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""下面时插件设置"""""""""""""""""""""''"""

call plug#begin('~/.config/nvim/plugged')

"""""""""""""""syntax""""""""""""""""""""""
" 内容对齐
Plug 'godlygeek/tabular'
" incsearch.vim
Plug 'haya14busa/incsearch.vim'
" 移动光标
Plug 'easymotion/vim-easymotion'
" 自动完成另一半
Plug 'jiangmiao/auto-pairs'
"括号的颜色
Plug 'luochen1990/rainbow'
" 多指针操作
Plug 'terryma/vim-multiple-cursors'
"surround
Plug 'tpope/vim-surround'
"listtoggle
Plug 'Valloric/ListToggle'
"主题
Plug 'iCyMind/NeoSolarized'
" vim-over
Plug 'osyo-manga/vim-over'
"fcitx.vim
Plug 'vim-scripts/fcitx.vim'
"vim-signature
Plug 'kshenoy/vim-signature'
"leaderf
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'gregsexton/gitv'
Plug 'vim-scripts/TaskList.vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

""""""""""""""""""language"""""""""""""""""""
Plug 'huawenyu/neogdb.vim'
Plug 'Shougo/echodoc.vim'

Plug 'prabirshrestha/async.vim'
"Plug 'prabirshrestha/asyncomplete.vim'
Plug 'Cosson2017/vim-lsp'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'

"c family highlight
Plug 'arakashic/chromatica.nvim' ", {'for':['cpp', 'h', 'hpp', 'c']}
Plug 'rhysd/vim-clang-format', {'for':['cpp', 'h', 'hpp', 'c']}

"qml
Plug 'peterhoeg/vim-qml', {'for':['qml']}

"tagbar 
Plug 'majutsushi/tagbar'

"ale
"Plug 'w0rp/ale'

"markdown
"Plug 'plasticboy/vim-markdown'
"Plug 'JamshedVesuna/vim-markdown-preview'
"
"mine
Plug 'Cosson2017/neo-comment.nvim'
Plug 'Cosson2017/neo-smooth-scroll.nvim'
Plug 'Cosson2017/lsp-completor.nvim'
Plug 'Cosson2017/neo-debuger'

call plug#end()            




" netrw
nnoremap <leader>e :20Lexplore<cr>
let g:netrw_list_hide = '.*\.swp$'
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
"let g:netrw_winsize   = 16



"NeoSolarized
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "normal"
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0
colorscheme NeoSolarized



" listtoggle
let g:lt_height = 10




" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)



"fcitx.vim
set ttimeoutlen=100



"rainbow
let g:rainbow_active = 1

"neosnippet
"imap <c-j>     <Plug>(neosnippet_expand_or_jump)
"smap <c-j>     <Plug>(neosnippet_expand_or_jump)
"xmap <c-j>     <Plug>(neosnippet_expand_target)
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" For conceal markers.
"if has('conceal')
"  set conceallevel=2 concealcursor=niv
"endif
"let g:neosnippet#enable_completed_snippet=1
"let g:neosnippet#snippets_directory='~/.config/nvim/plugged/neosnippet-snippets/neosnippets'



"leaderf
let g:Lf_UseMemoryCache = 0
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<c-b>'
"nnoremap <c-p> :LeaderfFile<cr>
"nnoremap <c-b> :LeaderfBuffer<cr>
nnoremap <c-f> :LeaderfFunction<cr>
nnoremap <c-g> :LeaderfBufTag<cr>
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_CommandMap = {'<C-C>': ['<Esc>', '<C-C>']}
"let g:Lf_Ctags ="~/usr/bin/ctags"




"tabular
let g:tabular_loaded = 1

"nvim-complete-manager
let g:cm_refresh_length = 1
let g:cm_matcher = {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'}
let g:cm_sources_override = {
			    \ 'cm-tags': {'enable':0},
				\ 'cm-jedi': {'enable': 0},
				\ 'cm-gocode': {'enable':0},
				\ 'cm-bufkeyword': {'enable':0},
				\ 'cm-keyword-continue': {'enable': 0},
				\ 'cm-tmux': {'enable': 0},
				\ 'cm-filepath': {'enable': 0},
			    \ }

"deoplete
let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_complete_start_length = 1
"call deoplete#custom#set('go', 'rank', 9999)
"call deoplete#custom#set('rtags', 'rank', 9999)
let g:deoplete#auto_complete_delay=0


"
""ale
""自定义跳转错误行快捷键：
"nmap <silent> <c-k> <Plug>(ale_previous_wrap)
"nmap <silent> <c-j> <Plug>(ale_next_wrap)
"" 进入文件不自动运行
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"" Enable all of the linters you want for Go.
"let g:ale_linters = {'go': ['go build'], 'cpp':[], 'c':[], 'h':[], 'hpp':[]}
"""保持侧边栏可见：
"let g:ale_sign_column_always = 0
""""改变错误和警告标识符：
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'
""""改变命令行消息：
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
""" Write this in your vimrc file
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 0


"easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
"nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap <leader>s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"git

"markdown
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_use_xdg_open=1

"chromatica
"au FileType h,hpp,c,cpp ChromaticaStart
let g:chromatica#enable_at_startup = 1
let g:chromatica#highlight_feature_level = 1
let g:chromatica#responsive_mode=1
let g:chromatica#delay_ms = 50
let g:chromatica#libclang_path = '/usr/lib/libclang.so'

"echodoc
let g:echodoc_enable_at_startup = 1

"asyncomplete
let g:asyncomplete_completion_delay = 25

"neogdb
let g:neobugger_leader = '<leader>'

"tagbar
nnoremap <F12> :TagbarToggle<CR>
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_ctags_bin = $HOME . "/usr/bin/ctags"
let g:tagbar_type_go = {
			\ 'ctagstype': 'go',
			\ 'kinds': [
			\ 'p:package',
			\ 'i:imports:1',
			\ 'c:constants',
			\ 'v:variables',
			\ 't:types',
			\ 'w:fields',
			\ 'm:methods',
			\ 'f:functions',
			\ 'r:constructor',
			\ 'n:interfaces',
			\],
			\ 'sro':'.',
			\ 'kind2scope':{
				\ 't':'ctype',
				\ 'n': 'ntype',
			\},
			\ 'ctagsbin': 'gotags',
			\ 'ctagsargs': '-sort -silent',
		\}

"vim-lsp
au BufRead,BufNewFile *.ts,javascript.jsx	set filetype=javascript
au BufRead,BufNewFile *.h set filetype=c
au BufRead,BufNewFile *.cc,*.hpp set filetype=cpp
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
let g:lsp_preview_keep_focus = 1

let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('/tmp/vim-lsp.log')

nnoremap <silent> <m-]> :LspDefinition<CR>
nnoremap <silent> <m-g> :LspDefinition<CR>
nnoremap <silent> <m-h> :LspHover<CR>
nnoremap <silent> <m-f> :LspReferences<CR>
nnoremap <silent> <m-s> :LspDocumentSymbol<CR>
nnoremap <silent> <m-r> :LspRename<CR>
nnoremap <silent> gq :LspDocumentFormat<CR>

" \ 'cmd': {server_info->['go-langserver', '-gocodecompletion','-func-snippet-enabled', '-logfile=/tmp/golangserver.log']},
        "\ 'cmd': {server_info->['go-langserver', '-logfile=/tmp/golangserver.log']},
if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'go-langserver',
		\ 'cmd': {server_info->['go-langserver', '-gocodecompletion', '-logfile=/tmp/golangserver.log']},
        \ 'whitelist': ['go'],
        \ })
endif

"if executable('clangd')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'clangd',
"        \ 'cmd': {server_info->['clangd']},
"        \ 'whitelist': ['c', 'cpp'],
"        \ })
"endif

"if executable('cquery')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'cquery',
"        \ 'cmd': {server_info->['cquery', '--language-server', '--log-file=/tmp/cq.log', '--init={"cacheDirectory": "/tmp/cquery"}']},
"        \ 'whitelist': ['c', 'cpp'],
"        \ })
"endif

"\ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
if executable('cquery')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'cquery',
      \ 'cmd': {server_info->['cquery']},
      \ 'root_uri': {server_info->lsp#utils#get_default_root_uri()},
      \ 'initialization_options': { 'cacheDirectory': '/tmp/cquery' },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
      \ })
endif

if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rust-rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('lua-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'lua-lsp',
        \ 'cmd': {server_info->['lua-lsp']},
        \ 'root_uri': {server_info->lsp#utils#get_default_root_uri()},
		\ 'initialization_options': { 'debugMode': 'false' },
        \ 'whitelist': ['lua'],
        \ })
endif

if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls', '--log-file=/tmp/pyls.log']},
        \ 'whitelist': ['python'],
        \ })
endif

if executable('typescript-language-server')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'typescript-lsp',
		\ 'cmd': {server_info->['typescript-language-server', '--stdio']},
		\ 'whitelist': ['javascript'],
		\ })
endif

if executable('docker-langserver')
	au User lsp_setup call lsp#register_server({
		\ 'name': 'docker-langserver',
		\ 'cmd': {server_info->['docker-langserver', '--stdio']},
		\ 'whitelist': ['dockerfile'],
		\ })
endif

"nnoremap <leader>c :call luaeval('require("init").add()')<cr>
