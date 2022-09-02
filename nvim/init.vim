call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

Plug 'tmhedberg/SimpylFold'

Plug 'vim-scripts/indentpython.vim'

Plug 'sheerun/vim-polyglot'

Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Badacadabra/vim-archery'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scheakur/vim-scheakur'
Plug 'rigellute/rigel'

Plug 'erietz/vim-terminator'

Plug 'jiangmiao/auto-pairs'

Plug 'preservim/nerdtree'

Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'

Plug 'dyng/ctrlsf.vim'

Plug 'Yggdroot/indentLine'

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

Plug 'matze/vim-move'

Plug 'vim-syntastic/syntastic'

Plug 'nvie/vim-flake8'

Plug 'kien/ctrlp.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'blueyed/vim-diminactive'

Plug 'dense-analysis/ale'

Plug 'rking/ag.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chengzeyi/fzf-preview.vim'


Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-scripts/AutoComplPop'

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"

set shell=/bin/bash
set ruler
set backspace=indent,eol,start
set tags=./tags
set hlsearch
set colorcolumn=89
set cursorline

set splitright

set nu     " Enable line numbers
syntax on  " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4 
" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4 
" Use spaces when tabbing
set expandtab

set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

set background=dark   " dark or light
colorscheme rigel  " Your favorite color scheme's name

"TERM
"""" enable 24bit true color
set termguicolors
autocmd InsertEnter * hi clear LineNr | hi LineNr ctermfg=blue
autocmd InsertLeave * hi clear LineNr | hi LineNr ctermfg=green
set mouse=a

set redrawtime=10000
set exrc
set secure

set encoding=UTF-8

let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos = "left"     " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns

nmap <F2> :NERDTreeToggle<CR>
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'
" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

set nofoldenable


" Use the ack tool as the backend
let g:ctrlsf_backend = 'ag'
" Auto close the results panel when opening a file
let g:ctrlsf_auto_close = { "normal":0, "compact":0 }
" Immediately switch focus to the search window
let g:ctrlsf_auto_focus = { "at":"start" }
" Don't open the preview window automatically
let g:ctrlsf_auto_preview = 0
" Use the smart case sensitivity search scheme
let g:ctrlsf_case_sensitive = 'smart'
" Normal mode, not compact mode
let g:ctrlsf_default_view_mode = 'normal'
" Use absoulte search by default
let g:ctrlsf_regex_pattern = 0
" Position of the search window
let g:ctrlsf_position = 'right'
" Width or height of search window
let g:ctrlsf_winsize = '80'
" Search from the current working directory
let g:ctrlsf_default_root = 'cwd'

let g:ctrlsf_parse_speed = 1000
let g:ctrlsf_ignore_dir = ['tests', 'test']
let g:ctrlsf_auto_close =
        \ {
            \ "normal" : 0,
            \ "compact": 0
        \ }
let g:ctrlsf_compact_position = 'bottom_inside'

let g:ctrlsf_mapping =
            \ {
                \ "open"    : "o",
                \ "openb"   : "O",
                \ "split"   : "<C-O>",
                \ "vsplit"  : "<CR>",
                \ "tab"     : "t",
                \ "tabb"    : "T",
                \ "popen"   : "p",
                \ "popenf"  : "P",
                \ "quit"    : "q",
                \ "next"    : "<C-J>",
                \ "prev"    : "<C-K>",
                \ "nfile"   : "<C-N>",
                \ "pfile"   : "<C-P>",
                \ "pquit"   : "q",
                \ "loclist" : "",
                \ "chgmode" : "M",
                \ "stop"    : "<C-C>",
            \ }

"(Ctrl+F) Open search prompt (Normal Mode)
nmap <C-F>f <Plug>CtrlSFPrompt 
" (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-F>f <Plug>CtrlSFVwordPath
" (Ctrl-F + F) Perform search with selection (Visual Mode)
xmap <C-F>F <Plug>CtrlSFVwordExec
" (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath
" (Ctrl-F + o )Open CtrlSF window (Normal Mode)
nnoremap <C-F>o :CtrlSFOpen<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

set updatetime=100
let g:gitgutter_max_signs = -1   " default value (otherwise


let g:move_key_modifier = 'C'
let g:move_key_modifier_visualmode = 'S'

au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_skip_empty_sections = 1

set tags=./tags

map <F4> :TagbarToggle<CR>
map tb :TagbarToggle<CR>

" update tagbar faster
set updatetime=500

"let g:tagbar_position = 'topleft vertical'

" ALE Python fixers
let g:ale_fixers = {'python': ['isort', 'black', 'remove_trailing_lines', 'trim_whitespace']}
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

nnoremap <silent> <C-f> :Files<CR>

nnoremap <silent> <leader>f :vnew<cr>:r !grep -rnw --exclude="tags" . -e<space>
nnoremap <silent> <leader>g :vnew<cr>:r !grep -rn --exclude="tags" . -e<space>

nnoremap <silent> gv :vsplit<CR><C-]>

nmap yu yiw
nmap yj p

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeWinSize=40

let g:NERDTreeGitStatusPorcelainVersion = 1

set complete+=kspell
set completeopt=menuone,longest


nnoremap 3 <C-w>H
nnoremap 4 <C-w>L


nnoremap 1 <C-w><left>
nnoremap 2 <C-w><right>

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 

map <Leader>tt :vnew term://bash<CR>

nnoremap 9 :vertical res +3<CR> " vertical increase pane by 2
nnoremap 0 :vertical res -3<CR> " vertical decrease pane by 2

nnoremap 7 :res +3<CR> " vertical increase pane by 2
nnoremap 8 :res -3<CR> " vertical increase pane by 2

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K


" cut
vnoremap <C-X> "+x

"Select all
nnoremap ac :%y<CR>
nnoremap ad ggdG


autocmd bufreadpre /root/.config/command_list setlocal winfixwidth

