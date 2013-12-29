" .vimrc
"
if &t_Co > 2 || has("gui_running")
	se t_Co=256
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
set number                        " turn the line numbers on
set tabpagemax=25                 " maximum number of tabs opened and displayed initially
set cursorline                    " highlight line cursor is currently on
set listchars=tab:>\ ,trail:.     " highlight tabs and trailing spaces
set list                          "                  ''

" Configuration of plugins/display
" --------------------------------

" nerdtree tabs plugin
let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_focus_on_files = 0
let g:nerdtree_tabs_meaningful_tab_names = 1
let g:nerdtree_tabs_synchronize_view = 1

" status line formatting
set laststatus=2
set statusline=
set statusline+=%1*\ \ \ \ 
set statusline+=%2*\%=line:%03l
set statusline+=%2*\%=\ col:%03c\ 

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
map <F12> :set number! list!<CR>

" make tabs/space marks stick out
map <S-F12> :hi SpecialKey ctermfg=Red<CR>
