execute pathogen#infect()
if (has("termguicolors"))
" set termguicolors
endif

let mapleader = ","

set term=xterm-256color
set backspace=indent,eol,start
set background=dark
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

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
" Mapping for going to next Ale issue
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

" pres // to stop highlighting results
nmap <silent> // :nohlsearch<CR>

" open nerdtree with ctrl+o
map <C-o> :NERDTreeToggle %<CR>

" open nerdtree with ctrl+o
command GGF GitGutterFold

" CtrlSF without prompt
nmap <silent> <leader>// :CtrlSF<CR>

" remove highlighted content without putting it in clipboard register

command W w " make :W behave like :w
command Q q " make :Q behave like :q

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
set paste " don't auto indent pasted code
set guifont=Inconsolata\ Nerd\ Font:h14 " font-name:pxSize
set clipboard=unnamed " use system clipboard for copy/paste
set encoding=UTF-8
" set termwinsize=20x0 " make term buffer size 20 rows tall
syntax enable " enable syntax highlighting
filetype plugin indent on " turns on plugin, indent, detection
colorscheme gruvbox " colorscheme

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
nnoremap <Space> <C-d>zz
" makes shift+spacebar behave like <C-u>
nnoremap <S-Space> <C-u>zz


" --------------------------------------------------------------------------------
" Tagbar config
" --------------------------------------------------------------------------------
" not sure what this does lol
let g:tagbar_compact = 1
let g:tagbar_show_visibility = 0
let g:tagbar_indent = 2
let g:tagbar_iconchars = ['+', '-']
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" open TagBar with ctrl+x
map <C-x> :TagbarToggle<CR>

set tags=tags " I _think_ this is for tagbar?

" --------------------------------------------------------------------------------
" Statusbar
" --------------------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_theme= 'gruvbox'
set laststatus=2 "always display statusbar

" --------------------------------------------------------------------------------
" NERDTree config
" --------------------------------------------------------------------------------
" open folder/file with spacebar in NERDTree
let NERDTreeMapActivateNode='<space>'

" open nerdtree on no file
function! StartUp()
if 0 == argc()
NERDTree
end
endfunction
autocmd VimEnter * call StartUp()

" start nerdtree with minimalui
let NERDTreeMinimalUI=1
let NERDTreeDirArrowExpandable = "\u00a0" " make arrows invisible
let NERDTreeNodeDelimiter = "\u263a" " smiley face




"set wildmode=longest,list,full
set wildmode=list:longest,full
" Not sure why the below is recommended, should look into later
" set wildmenu
" set wildmode=list:longest,full


" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set t_Co=256




"Smooth scroll on ctrl+d and ctrl+u
nnoremap <silent> <c-u> :call <sid>smoothScroll(1)<cr>
nnoremap <silent> <c-d> :call <sid>smoothScroll(0)<cr>
fun! s:smoothScroll(up)
execute "normal " . (a:up ? "\<c-y>" : "\<c-e>")
redraw
for l:count in range(3, &scroll, 2)
sleep 7m
execute "normal " . (a:up ? "\<c-y>" : "\<c-e>")
redraw
endfor

" bring the cursor in the middle of screen
execute "normal M"
endf

" same as above but apply to super star as well
:nnoremap * /\<<C-R>=expand('<cword>')<CR>\><CR>
:nnoremap # ?\<<C-R>=expand('<cword>')<CR>\><CR>


" Only highlight active buffer lines
augroup BgHighlight
autocmd!
autocmd WinEnter * set cul
autocmd WinLeave * set nocul
augroup END

" no swap files
set noswapfile
set noundofile
set nobackup
set nowb


set rtp+=/usr/local/opt/fzf

