call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'dyng/ctrlsf.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'rhysd/git-messenger.vim'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'luochen1990/rainbow'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'janko/vim-test'
Plug 'christoomey/vim-tmux-navigator'
Plug 'https://github.com/chrisbra/Colorizer.git'
Plug 'vimwiki/vimwiki'

" writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" javascript/web
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/pangloss/vim-javascript.git'

" themes
Plug 'mhartington/oceanic-next'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/lifepillar/vim-gruvbox8.git'
Plug 'https://github.com/ajh17/Spacegray.vim.git'
Plug 'https://github.com/arcticicestudio/nord-vim.git'
Plug 'https://github.com/sainnhe/sonokai.git'
Plug 'https://github.com/jnurmine/Zenburn.git'
Plug 'https://github.com/chriskempson/tomorrow-theme.git'
Plug 'https://github.com/dracula/vim.git'
Plug 'ayu-theme/ayu-vim'
Plug 'https://github.com/kristijanhusak/vim-hybrid-material.git'
Plug 'https://github.com/nanotech/jellybeans.vim.git'
Plug 'Brettm12345/moonlight.vim'

call plug#end()

let mapleader = ","

set backspace=indent,eol,start
set background=dark
set termguicolors

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab " enter spaces when tab is pressed
set textwidth=120 " break lines when line length increases
set tabstop=2 " use 2 spaces to represent tab
set softtabstop=4
set shiftwidth=2 " number of spaces to use for auto indent
set autoindent " copy indent from current line when starting a new line
let g:tex_flavor = 'latex'



" --------------------------------------------------------------------------------
" Mappings
" --------------------------------------------------------------------------------
imap <c-e> <c-o>$
imap <c-a> <c-o>^
nmap <silent> // :nohlsearch<CR>
inoremap jj <Esc>
map <leader>aj :ALENext<cr>
map <leader>ak :ALEPrevious<cr>
vmap <Leader>as :sort<cr>
nmap <Leader>as :sort<cr>
map <silent><Leader>e :ALEFix eslint<CR>
map <leader>es :UltiSnipsEdit<cr>
map <leader>gw :Gwrite<CR>
map <leader>gc :Gcommit -m ""<LEFT>
map <leader>gs :Gstatus<CR>
map <leader>gb :Gblame<CR>
map <leader>gd :Gdiffsplit<CR>
map <Leader>h <<
map <Leader>j ddp
map <Leader>k ddkP
map <Leader>l >>
map <leader>n :NERDTreeToggle <CR>
map <leader>r :%s///g<LEFT><LEFT><LEFT>
map <leader>ss :setlocal spell!<CR>
map <Leader>sv :so $MYVIMRC<cr>
map <leader>t :TestFile<CR>
map <leader>// :FZF<CR>
map <leader>/, :CtrlSF<SPACE>

nnoremap <leader>v <C-w>v
nnoremap <leader>h <C-w>s

" open vimrc/init.vim
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>

" Jump to matching pairs easily, with Tab
nnoremap <Tab> %

" increment numbers
noremap + <c-a>
noremap - <c-x>

map <Leader>cs :colorscheme <SPACE>

" jump to
" nnoremap <silent> <Space><Space> /++/<CR> ciw
nnoremap <silent> <Space><Space> /++/<CR>

" fat finger saving or quiting
command W w " make :W behave like :w
command Q q " make :Q behave like :q

map Q <Nop>

" Emacs-like beginning and end of line.

command GGF GitGutterFold
" --------------------------------------------------------------------------------
" Autocmds
" --------------------------------------------------------------------------------
" Delete trailing spaces/whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" auto run python files on save
" autocmd BufWritePost *.py silent! bd \!python3\ * | vert term python3 %

" --------------------------------------------------------------------------------
" General settings
" --------------------------------------------------------------------------------
set number " enable line numbers
set relativenumber " enable relative number (numbers change based on where the cursor is)
set undofile " Persistent undo
set incsearch " search as characters are entered
set hlsearch " highlight matches
set guioptions= " Remove scrollbars in macvim
set splitbelow " open all horizontal buffers below current one
set splitright "open all vertical buffers to the right of the current one
set cursorcolumn " highlight column of cursor
set cursorline " highlight row of cursor
set showmatch " highlight matching brace/backet when cursor over
set scrolloff=5 " keep cursor away from top/bottom
set ignorecase " ignore case if search pattern is all lowercase
set smartcase " don't ignore case if start with capital
" set paste " don't auto indent pasted code
set guifont=Inconsolata\ Nerd\ Font:h14 " font-name:pxSize
set clipboard=unnamed " use system clipboard for copy/paste
set encoding=UTF-8
set showcmd " display incomplete commands
set lazyredraw " don't redraw screen during macros
set gdefault " assume the /g flag on :s substitutions to replace all matches in a line
" set termwinsize=20x0 " make term buffer size 20 rows tall
syntax enable " enable syntax highlighting
filetype plugin indent on " turns on plugin, indent, detection
set t_Co=256
colorscheme sonokai " colorscheme
" colorscheme gruvbox " colorscheme

" no swap files
set noswapfile
set noundofile
set nobackup
set nowb

" --------------------------------------------------------------------------------
" Movement
" --------------------------------------------------------------------------------
" navigate buffers easier
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" navigate terminal buffers easier
tnoremap <C-h> <C-w>h
tnoremap <C-j> <C-w>j
tnoremap <C-k> <C-w>k
tnoremap <C-l> <C-w>l

" makes spacebar behave like <C-d>
" nnoremap <Space> <C-d>zz

" makes shift+spacebar behave like <C-u>
" nnoremap <S-Space> <C-u>zz

" no more skipping lines due to wrapping (doesn't work with relative number)
" nmap k gk
" nmap j gj

" --------------------------------------------------------------------------------
" Tagbar config
" --------------------------------------------------------------------------------
" not sure what this does lol
let g:tagbar_compact = 1
let g:tagbar_show_visibility = 0
let g:tagbar_indent = 2
let g:tagbar_iconchars = ['+', '-']
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'


set tags=tags " I _think_ this is for tagbar?

" --------------------------------------------------------------------------------
" Statusbar
" --------------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
" let g:airline_theme= 'gruvbox'
set laststatus=2 "always display statusbar

" --------------------------------------------------------------------------------
" NERDTree config
" --------------------------------------------------------------------------------
" open folder/file with spacebar in NERDTree
let NERDTreeMapActivateNode='<space>'

" open nerdtree on no file
" function! StartUp()
" if 0 == argc()
" NERDTree
" end
" endfunction
" autocmd VimEnter * call StartUp()

" start nerdtree with minimalui
let NERDTreeMinimalUI=1
let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
let NERDTreeNodeDelimiter = "\u263a" " smiley face
let NERDTreeIgnore = ['.git$', '^node_modules']

" --------------------------------------------------------------------------------
" Limelight config
" --------------------------------------------------------------------------------
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 240

" --------------------------------------------------------------------------------
"  Indent Guides config
" --------------------------------------------------------------------------------
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


" --------------------------------------------------------------------------------
" indent-guide config
" --------------------------------------------------------------------------------
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" --------------------------------------------------------------------------------
" FZF floating window for nvim
" --------------------------------------------------------------------------------
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'
let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(20) " 10
  let width = float2nr(80) " 80
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 1

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction

" --------------------------------------------------------------------------------
" Ultisnips
" --------------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


" --------------------------------------------------------------------------------
" ctrlsf
" --------------------------------------------------------------------------------
let g:ctrlsf_auto_focus = {
    \ 'at': 'start',
    \ }

let g:ctrlsf_mapping = {
    \ "vsplit": "<C-v>",
    \ }

" --------------------------------------------------------------------------------
" vim-test config
" --------------------------------------------------------------------------------
" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" --------------------------------------------------------------------------------
" rainbow config
" --------------------------------------------------------------------------------
" enable rainbow parens
let g:rainbow_active = 1

" --------------------------------------------------------------------------------
" Misc.
" --------------------------------------------------------------------------------
"set wildmode=longest,list,full
set wildmode=list:longest,full
" Not sure why the below is recommended, should look into later
" set wildmenu
" set wildmode=list:longest,full

" no one should have to resize without a mouse
if has('mouse')
  set mouse=a
endif

" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if has('nvim')
  augroup vimrc_term
    autocmd!
    autocmd WinEnter term://* nohlsearch
    autocmd WinEnter term://* startinsert

    autocmd TermOpen * tnoremap <buffer> <C-h> <C-\><C-n><C-w>h
    autocmd TermOpen * tnoremap <buffer> <C-j> <C-\><C-n><C-w>j
    autocmd TermOpen * tnoremap <buffer> <C-k> <C-\><C-n><C-w>k
    autocmd TermOpen * tnoremap <buffer> <C-l> <C-\><C-n><C-w>l
    autocmd TermOpen * tnoremap <buffer> <Esc> <C-\><C-n>
  augroup END
endif


"Smooth scroll on ctrl+d and ctrl+u
" nnoremap <silent> <c-u> :call <sid>smoothScroll(1)<cr>
" nnoremap <silent> <c-d> :call <sid>smoothScroll(0)<cr>
" fun! s:smoothScroll(up)
" execute "normal " . (a:up ? "\<c-y>" : "\<c-e>")
" redraw
" for l:count in range(3, &scroll, 2)
" sleep 7m
" execute "normal " . (a:up ? "\<c-y>" : "\<c-e>")
" redraw
" endfor

" bring the cursor in the middle of screen
" execute "normal M"

" same as above but apply to super star as well
:nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
:nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>


" Only highlight active buffer lines
augroup BgHighlight
autocmd!
autocmd WinEnter * set cul
autocmd WinLeave * set nocul
augroup END

" spell check and automatically wrap commit messages.
autocmd Filetype gitcommit setlocal spell textwidth=72


" --------------------------------------------------------------------------------
" Format one-liners
" --------------------------------------------------------------------------------


set rtp+=/usr/local/opt/fzf
