" .vimrc

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" chosen bundles
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'mhinz/vim-signify'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'Raimondi/delimitMate'

filetype plugin indent on

if &t_Co > 2 || has("gui_running")
	set t_Co=256
	set background=light
	set hlsearch
	colorscheme tim
endif

" Options
" -------
syntax on
filetype plugin indent on
set backspace=2                   " allows insert-mode backspace to work as one expects
set smarttab                      " indent next line as the previous
set scrolloff=4                   " keep this many lines of context around cursor
set tabstop=4                     " number of spaces that a <tab> in the file counts for
set softtabstop=4                 " number of spaces that a <tab> counts for while editing
set shiftwidth=4                  " number of spaces to use for each step of (auto)indent
set ruler                         " show the cursor position all
set incsearch                     " jumps to search word as you type
set wildignore=*.o,*.obj,*.bak    " file types to ignore for any autocomplete
set nobackup                      " don't use a backup file (also see writebackup)
set ruler                         " show the line position at the bottom of the window
set scrolloff=1                   " minimum lines between cursor and window edge
set shiftwidth=4                  " indent by 4 columns (for C functions, etc).
set showcmd                       " show partially typed commands
set viminfo='0,\"100,             " stay at the start of a file when opening it
set whichwrap=<,>,[,],h,          " allows for left/right keys to wrap across lines
set writebackup                   " write temporary backup files in case we crash
set title                         " display a title
set winminheight=0                " these settings allow windows to minimise when moving between horizontal panes
set nowrap                        " lines don't wrap by default
set showtabline=2                 " always show the tabline at the top of the screen
"set number                        " turn the line numbers on
set tabpagemax=25                 " maximum number of tabs opened and displayed initially
set cursorline                    " highlight line cursor is currently on
set listchars=tab:>\ ,trail:.     " highlight tabs and trailing spaces
"set list                          "                  ''
set encoding=utf-8                " hint for extensions which require this detail
set termencoding=utf-8
set laststatus=2                  " show the status line
set noshowmode                    " turn off default mode indicator, managed in the status line via airline
" turn off pipe char from appearing in vsplit separator
:set fillchars+=vert:\ 

" Configuration of plugins/display
" --------------------------------

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 0

" signify
let g:signify_vcs_list = [ 'git', 'cvs' ]

" nerdtree tabs plugin
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_focus_on_files = 0
let g:nerdtree_tabs_meaningful_tab_names = 1
let g:nerdtree_tabs_synchronize_view = 1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Shortcut key mappings
" ---------------------

" session handling
map <F5> :mksession! ~/.vim/.
map <F6> :source ~/.vim/.

" tab handling
map <F7> :tabf
map <F8> :tabnew
map <C-P> :tabp<CR>
map <C-N> :tabn<CR>

" file browser panel, this also guarantees that the
" nerdtrees for all tabs will be one and the same
map <S-F11> :NERDTreeToggle \| :silent NERDTreeMirror<CR>

" formatting info on/off quickly
map <F12> :set number!<CR>

" make tabs/space marks stick out
map <S-F12> :hi SpecialKey ctermfg=254<CR>

" display the sign column all the time
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

" nicer looking whitespace highlighting
set lcs=tab:│┈,trail:·,extends:>,precedes:<,nbsp:&

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

