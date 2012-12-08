"A lot of this shamelessly copied from http://amix.dk/vim/vimrc.html

"Command history
set history=1000

"Encoding and language
set encoding=utf8
set ffs=unix,dos,mac

"Autoread for external changes
set autoread

"Wild menu when browsing from Vim
set wildmenu
set wildignore=*.o,*~,*.pyc

"Statusline
set laststatus=2
set statusline=%t%y%<[%{strlen(&fenc)?&fenc:'none'}]%h%m%r%w%=%{getcwd()}\ \ (%c,%l/%L)

"Don't redraw when executing macros (for performance)
set lazyredraw

"Syntax highlighting
syntax enable

"Show matching bracket when hovering over one
set showmatch
set mat=2       "tenths of a second

"Magic regexes
set magic

"Leader
let mapleader = ","
let g:mapleader = ","  "gVim

"Nuking ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Tabs
map <leader>tn :tabnew<cr>
map <leader>tq :tabclose<cr>
map <leader>tm :tabmove<space>
map <leader>te :tabedit<space>
map <leader>tt :tabnext<cr>
map <leader>tr :tabprev<cr>

"Search
set ignorecase
set smartcase
set hlsearch
set incsearch
map <silent> <space> :noh<cr>

"Visual mode pressing * or # searches for the current selection
"Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

"Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
map <leader>sr ]s
map <leader>st [s
map <leader>sa zg
map <leader>s? z=

"Weird stuff involving backspace and indents
set backspace=eol,start,indent
set whichwrap+=<,>,h,l      "moving cursor left/right

"Indent/spacing
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set si

"Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

"Sound stop. Annoying sound stop.
set noerrorbells
set novisualbell
set t_vb=
set tm=500
