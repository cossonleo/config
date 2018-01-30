set cul 
set number
set relativenumber
set showcmd
set cmdheight=1
set ruler
set confirm
set scrolloff=3
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
set ignorecase
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


"""""""""""""""completion"""""""""""""""
" 安装或更新过后要执行 UpdateRomePlugins
Plug 'roxma/nvim-completion-manager'
"Plug 'Shougo/deoplete.nvim'
"""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""language"""""""""""""""""""
" 'do': 'install.sh',
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
	\ 'do': './install.sh',
    \ }
Plug 'huawenyu/neogdb.vim'
"UpdateRomePlugins
"Plug 'c0r73x/neotags.nvim'

" 安装或更新过后要到相应目录执行 make
Plug 'sebdah/vim-delve', {'for': ['go']}
Plug 'fatih/vim-go', {'for': ['go']}
"""""""""""""""""""""""""""""""""""""""""""

"c family highlight
Plug 'arakashic/chromatica.nvim' ", {'for':['cpp', 'h', 'hpp', 'c']}
Plug 'rhysd/vim-clang-format', {'for':['cpp', 'h', 'hpp', 'c']}

"qml
Plug 'peterhoeg/vim-qml', {'for':['qml']}

"ale
Plug 'w0rp/ale'

"markdown
"Plug 'plasticboy/vim-markdown'
"Plug 'JamshedVesuna/vim-markdown-preview'

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



" vim-go
let g:go_bin_path = expand("~/.config/nvim/golang-tools")
au FileType go nnoremap <m-f> :GoReferrers<cr>

let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_generate_tags = 0
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1

let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0


" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"map / <Plug>(incsearch-easymotion-/)
"map ? <Plug>(incsearch-easymotion-?)
"map g/ <Plug>(incsearch-easymotion-stay)



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
"" For conceal markers.
""if has('conceal')
""  set conceallevel=2 concealcursor=niv
""endif
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
let g:cm_refresh_length = 2
let g:cm_matcher = {'module': 'cm_matchers.fuzzy_matcher', 'case': 'smartcase'}

"deoplete
let g:deoplete#enable_at_startup = 1
"let g:deoplete#auto_complete_start_length = 1
"call deoplete#custom#set('go', 'rank', 9999)
"call deoplete#custom#set('rtags', 'rank', 9999)
let g:deoplete#auto_complete_delay=0



"ale
""自定义跳转错误行快捷键：
nmap <silent> <c-k> <Plug>(ale_previous_wrap)
nmap <silent> <c-j> <Plug>(ale_next_wrap)
" 进入文件不自动运行
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
" Enable all of the linters you want for Go.
let g:ale_linters = {'go': ['go build'], 'cpp':[], 'c':[], 'h':[], 'hpp':[]}
""保持侧边栏可见：
let g:ale_sign_column_always = 0
"""改变错误和警告标识符：
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
"""改变命令行消息：
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"" Write this in your vimrc file
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0


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

"LanguageClient

au BufRead,BufNewFile *.ts	set filetype=javascript
au BufRead,BufNewFile *.h set filetype=c
au BufRead,BufNewFile *.cc,*.hpp set filetype=cpp
let g:LanguageClient_serverCommands = {
    \ 'c': ['cquery', '--language-server', '--log-file=/tmp/cq.log'],
    \ 'cpp': ['cquery', '--language-server', '--log-file=/tmp/cq.log'],
	\ 'go': ['go-langserver', '-gocodecompletion', '-func-snippet-enabled', '-logfile=/tmp/golangserver.log'],
    \ 'javascript': ['node','/home/admin/usr/javascript-typescript-langserver/lib/language-server-stdio'],
    \ 'javascript.jsx': ['node','/home/admin/usr/javascript-typescript-langserver/lib/language-server-stdio'],
	\ 'python': ['pyls', '--log-file=/tmp/pyls.log'],
	\ 'rust': ['rustup', 'run', 'stable', 'rls'],
	\ 'lua': ['lua-lsp'],
    \ } 

let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings 
let g:LanguageClient_settingsPath = $HOME . '/.config/nvim/settings.json'
"set completefunc=LanguageClient#complete
"set formatexpr=LanguageClient_textDocument_rangeFormatting()
au FileType go,rs,py,js,ts,lua nnoremap gq :call LanguageClient_textDocument_formatting()<CR>
au FileType c,cpp nnoremap gq :ClangFormat<CR>
nnoremap <silent> <m-]> :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <m-h> :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <m-f> :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> <m-s> :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> <m-r> :call LanguageClient_textDocument_rename()<CR>
"nnoremap <silent> gb :call LanguageClient_cquery_base()<CR>
"nnoremap <silent> gd :call LanguageClient_cquery_derived()<CR>
"nnoremap <silent> gc :call LanguageClient_cquery_callers()<CR>
"nnoremap <silent> gv :call LanguageClient_cquery_vars()<CR>
