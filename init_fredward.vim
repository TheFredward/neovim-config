"Basic Configuration ----{{{

"Add number lines
set number
"Set # lines relative to current location
set relativenumber
"# of columns occupied by tab
set tabstop=4
"set multi spaces as tabstops so <BS> functions
set softtabstop=4
"# of columns occupied by autoindents
set shiftwidth=4
"Convert tab to white spaces
set expandtab

"Do not save backup files
set nobackup
"Show partial command you type in the last line
set showcmd
"Show the current mode on the last line
set showmode
"Set the commands to save in history
set history=250

"Middle-click paste
set mouse=v
"Highlight search
set hlsearch
"Incremental search
set incsearch
"Ignore capital letters during search
set ignorecase
"Override ignorecase option IF searching for capital letters
set smartcase
"Show Matching
set showmatch
"Highlight cursor line underneath the cursor horizontally
set cursorline
set cursorcolumn
"Enable syntax
syntax enable
"Set color
set termguicolors
"}}}
" PLUGINS -------------{{{

call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'sainnhe/everforest'
    Plug 'evilwaveforms/silenthill.vim'
    Plug 'JoosepAlviste/palenightfall.nvim'
    Plug 'ap/vim-css-color'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.3' }
call plug#end()
" }}}
" MAPPINGS ------------{{{
"Input mode mappings ---
inoremap jj <ESC>
"Normal mode mappings ---
nnoremap <space> :
"source init.vim ---
nnoremap <leader>sou :source $MYVIMRC<cr>
"Split windows keybindins form navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"NERDTREE specific mapping ---{{{
"F3 to open and close
nnoremap <F3> :NERDTreeToggle<cr>
"}}}
"TELESCOPE mapping {{{
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr> 
nnoremap <leader>fb <cmd>Telescope buffers<cr> 
"}}}

"}}}
" VIMSCRIPT ------------{{{
" AIRLINE THEMES ---{{{{
" Enable list buffers
let g:airline#extensions#tabline#enabled=1
"set theme
let g:airline_theme='tomorrow'
" }}}
" EVERFOREST THEME CONFIG ---{{{
    set background=dark
    "available vals: soft, medium,hard
    let g:everforest_background= 'hard'
    let g:everforest_ui_contrast='high'
" }}}
"  Current COLORSCHEME ---{{{
   colorscheme everforest
"  }}}

"Enable code folding
augroup filetype_nvim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END
" }}}

lua require('lsp_config')
