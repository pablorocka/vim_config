"------------------------------------------------------------
"
"   .vimrc
"   Author: Pablo Cabrera
"
"------------------------------------------------------------

"   General Settings
" General settings {{{
"set verbose=7
autocmd! bufwritepost   vimrc,.vimrc source %                   " apply .vimrc if modify
autocmd  BufRead        vimrc,.vimrc set foldmethod=marker      " enable folding on .vimrc
set encoding=utf8
" Disable backup files and swap files
set nobackup
set nowritebackup
set noswapfile
" Read .exrc in each directory
set exrc
" Auto read buffer when changed externally
set autoread
" Allow switching unsaved buffers
set hidden
" Options to save when making views
set viewoptions=folds,options,cursor
" Options when saving sessions
set sessionoptions=buffers,curdir,folds,options,tabpages,winsize,globals,localoptions
" Stuff to save on viminfo
set viminfo='1000,f0,<50,s10,h,%0
" Better clipboard integration with the system
set clipboard=unnamedplus
" Down redraw while executing macros
set lazyredraw
" }}}

"   Editing Behavior
" Editing Behavior {{{
" Search options:
set ignorecase
set smartcase
" set magic regular expressions
set magic
" Incremental search and Highlight search results
set hlsearch
set incsearch"
" Setting Tabs and Spaces settings
set tabstop=8
set softtabstop=8
set shiftwidth=8
set expandtab
set smarttab
set backspace=indent,eol,start
" other programming options
set showmatch
set autoindent
" when scrolling don't move the cursor to start of line for non-empty lines
set nostartofline
" leave 5 lines when moving the cursor at the top or the end of the page
set scrolloff=4
" Activating enchanced command completion mode
set wildmenu
" Detecting filetypes
filetype plugin indent on
" }}}

"   Visuals
" Visuals {{{
" Enable syntax highlighting
syntax on
" color scheme a modified desert scheme
colorscheme desert-mod
" Remove toolbar from gui
set guioptions-=T
" Height of command bar
"set cmdheight=2
" Show partial command
set showcmd
" Setting font for Gui
if has("gui_running")
        set guifont=Ume\ Gothic\ 13
endif
" disable mouse
set mouse=""
" Showing invisible characters (tabs and EOL)
set list
set listchars=tab:⇨\ ,eol:↩
" disable error bells and visual bells
set noerrorbells
set novisualbell
" show line and relative line number
set number
set relativenumber
" Display cursor position in buffer
set ruler
" Highlight cursor line
set cursorline
" }}}

"   Plugins Configuration
" Plugins Configuration {{{
" Pathogen
call pathogen#infect()
" Airline
set laststatus=2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts = 1
" Airline Extensions
let g:airline#extensions#tabline#enabled   = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled    = 1
let g:airline_symbols.branch = '' " Other possible symbols:⎇  
" NerdTree
nmap <C-F10> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode  = 2
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowBookmarks = 1
" neocomplete
let g:neocomplete#enable_at_startup = 1
" Bufferline
let g:bufferline_rotate = 1
let g:bufferline_echo = 0
let g:bufferline_fixed_index = -1
" Startify
autocmd FileType startify setlocal buftype=
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_list_order  = [
            \ ['    SESSIONS:'], 'sessions',
            \ ['    RECENT FILES:'], 'files',
            \ ['    BOOKMARKS:'], 'bookmarks' ]
let g:startify_session_autoload         = 1
let g:startify_session_delete_buffers   = 1
let g:startify_change_to_dir            = 1
let g:startify_skiplist = [ '/run/user/1000/*' ]
" Perl Support
let g:Perl_Ctrl_j = 'off'
" Ag
let g:ag_highlight=1
" Webdevicons
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sqlite'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xml'] = ''
let g:webdevicons_enable = 1
" Ctrlp
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_follow_symlinks = 1
" syntastic
let g:syntastic_cpp_compiler_options = '-std=gnu++11'
let g:syntastic_always_populate_loc_list=1
let g:syntastic_enable_perl_checker = 1
" Browserlink extensions to reload automatically:
"let g:bl_pagefiletypes = [ 'html', 'javascript', 'php', 'mkd' ]
" Incsearch mappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" }}}

"   Mapping List
" Mapping List {{{
" copy all to clipboard
map <C-A> :%y+<CR>
" window Movement
nnoremap <C-k> <C-W>k
nnoremap <C-j> <C-W>j
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nmap <C-j> <C-W>j
" Easymotion mappings:
nmap <F3> <Leader><Leader>f
nmap <S-F3> <Leader><Leader>F
map <Leader>/ <Plug>(easymotion-sn)
" Mapping folding to F9 key
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
" Add blank line above and below using + and -
nnoremap - maO<esc>`a
nnoremap + mao<esc>`a
" Mapping TagBar to F8 key
nmap <F8> :TagbarToggle<CR>
" Moving between buffers
nmap <S-Right> :bn!<cr>
nmap <S-Left>  :bp!<cr>
nnoremap <silent> <C-S> :<C-u>Update<CR>
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
" XML and HTML tag moving using plugin breeze
"nnoremap <Leader>tk :BreezePrevSibling<CR>
"nnoremap <Leader>tj :BreezeNextSibling<CR>
"nnoremap <Leader>th :BreezeParent<CR>
"nnoremap <Leader>tl :BreezeFirstChild<CR>
nnoremap <left>  :wincmd <<cr>
nnoremap <right> :wincmd ><cr>
nnoremap <up>    :wincmd +<cr>
nnoremap <down>  :wincmd -<cr>
" Use all regexp "very magic"
" nnoremap / /\v
" vnoremap / /\v
" simple shorcut to :set ft=
nmap <F4> :set ft=
nmap <C-A-Home> :Startify<cr>
" To change the Tabsize
nmap <F2> :Stab<cr>
" }}}

"   Other Settings
" Other Settings {{{
" XML Folding
let g:xml_syntax_folding=1
autocmd FileType xml setlocal foldmethod=syntax
" Javascript Folding
let g:javascript_syntax_folding=1
autocmd FileType javascript setlocal foldmethod=syntax
"if has("gui_gnome") || has("gui_gtk") || has("gui_gtk2")
map <F10> :noh<CR>
"endif
" Map for easy switching buffers
nnoremap <F6> :buffers<CR>:buffer!<Space>
nnoremap <F5> <C-L>
" Setting filetypes
autocmd BufNewFile,BufRead *.map set filetype=map
autocmd BufNewFile,BufRead *.xml set filetype=xml.skynet
autocmd BufNewFile,BufRead *.mos set filetype=mos
autocmd BufNewFile,BufRead *.md  set filetype=markdown
autocmd BufNewFile,BufRead *.xml,*.html,*.sql,*css setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType xml,html,sql,css setlocal tabstop=4 shiftwidth=4 softtabstop=4
let g:sqlutil_load_default_maps = 0
" Keep the clipboard after paste
vnoremap <leader>p "_dP
let g:markdown_fenced_languages = [ 'perl', 'css', 'html', 'javascript', 'sh', 'xml', 'xquery', 'conf' ]
"so ~/.vim/scripts/test.vim
"so ~/.vim/scripts/tabsize_switch.vim
"so ~/.vim/scripts/a_indent/a_indent.vim
"so ~/.vim/scripts/align.vim
"so ~/.vim/scripts/comments.vim
" }}}

runtime vimrc_custom " Add any additional stuff that might include personal information
