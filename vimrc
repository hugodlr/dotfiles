"SETUP
"-------------------------------------------------------------------------------
"Set Runtime Directory
execute pathogen#infect()





"COMPATIBILITY & ENCODING
"-------------------------------------------------------------------------------
"Use Vim features, not Vi
set nocompatible
"Set UTF-8 Encoding
set encoding=utf-8
set fileencoding=utf-8





"SYNTAX HIGHLIGHTING
"-------------------------------------------------------------------------------
"Switches on syntax highlighting
syntax enable
"Detect filetype
filetype plugin on
"Better syntax highlight
colorscheme palenight
set background=dark
set termguicolors
set guifont=Operator_Mono:h19
"Italicised comments and attributes
highlight htmlArg cterm=italic
highlight Comment cterm=italic
highlight Type cterm=italic
let g:palenight_terminal_italics=1
"256 colours
set t_Co=256
"Show matching parens, brackets, etc.
set showmatch
"Round indent to nearest multiple of 2
set shiftround
"Set syntax for HTML templates
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.hbs set filetype=htmldjango
autocmd BufRead,BufNewFile *.mustache set filetype=htmldjango
" JSX support
let g:jsx_ext_required = 0





"TEXT
"-------------------------------------------------------------------------------
"When a file is edited its indent file is loaded
filetype plugin indent on
"Remove underline from HTML files
let html_no_rendering=1
"Make the tab key insert spaces instead of tabs
set expandtab
"2 spaces indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set showtabline=2
"No line-wrapping
set nowrap
"Auto-format comments
set formatoptions+=roq
"Spell-check always on
"set spell
"Underscores denote words
"set iskeyword-=_
"Remove automatically all trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e
"Note trailing space at end of next line
set showbreak=>\ \ \




"DECORATIONS
"-------------------------------------------------------------------------------
"Display line numbers
set number
"Change the width of the gutter column used for numbering
set numberwidth=5
"Show current line and column position in file
set ruler
"Colour the 81st column
set colorcolumn=81
"New line after 80 characters for Markdown files
autocmd FileType markdown set textwidth=80
"After 72 characters for Git commit messages
autocmd FileType gitcommit set textwidth=72
"And colour line after 73 characters
autocmd FileType gitcommit set colorcolumn=73
"Highlight the current line in every window
set cursorline
"Show file title in terminal tab
set title
"File messages and options
set shortmess=atI
"Incomplete Commands
set showcmd
"Make the status line visible in with only one window
set laststatus=2
"Allow modelines
set modeline
"Show invisibles
set list
"Make the invisibles looks better
set listchars=tab:»-,trail:· ",eol:¬





"BUFFER
"-------------------------------------------------------------------------------
"Show file options above the command line
set wildmenu
"Open splits to the right
set splitright
"Open splits to below
set splitbelow
"Change vertical split characters
set fillchars=vert:\
"Airline theme
let g:airline_theme='kolor'
"Don't offer to open certain files/directories
set wildignore=.swp,.swo,.netrwhist,.svn,.git,.gitkeep,.DS_Store,.sass-cache,node_modules,bower_components,wp-admin,wp-includes
let g:netrw_list_hide='.swp,.swo,.netrwhist,.svn,.git,.gitkeep,.DS_Store,.sass-cache,node_modules,bower_components,wp-admin,wp-includes'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|svn|node_modules|bower_components|wp-admin|wp-includes)$'





"SEARCH
"-------------------------------------------------------------------------------
"Don't keep results highlighted after searching
set nohlsearch
"Just highlight as we type
set incsearch
"Ignore case when searching
set ignorecase
"Except if we input a capital letter
set smartcase





"INTERACTIONS
"-------------------------------------------------------------------------------
"Start scrolling before the cursor reaches an edge
set scrolloff=3
set sidescrolloff=5
"Scroll sideways a character at a time
set sidescroll=1
"Allow motions and back-spacing over line-endings
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]
set statusline=%f\ %=Line\ %l/%L\ Col\ %c\ (%p%%)
"Resize splits
autocmd VimResized * exe "normal! \<c-w>="





"KEY MAPPINGS
"-------------------------------------------------------------------------------
"jj and jk to throw you into normal mode from insert mode
inoremap jj <esc>
noremap jk <esc>
"Make n and N bring next search result to middle line
nnoremap n nzz
nnoremap N Nzz
"Vim-like window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"Go to the previous or next tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"Front-end Beautify
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"Change Emmet trigger to Tab
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

