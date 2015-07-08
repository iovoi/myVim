" set up for vundle (plugins manager)
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" examples:
" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...
Bundle 'Lokaltog/vim-powerline'
Bundle 'sickill/vim-monokai'
Bundle 'Color-Sampler-Pack'
Bundle 'desert-warm-256'
Bundle 'flazz/vim-colorschemes'
Bundle 'ColorSchemeMenuMaker'
Bundle 'scrooloose/nerdtree'
Bundle 'Yggdroot/indentLine'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

" syntax on
syn on 

" set number
set nu 

" colorscheme desert
" color desert 

" indent automatically depending on filetype
"""
" filetype indent on
"""

" set autoindent
set ai 

" Case insensitive search
set ic 

" Highlight search
set hls

" wrap text instead of being on one line
set lbr

" Allow the cursor to move just past the end of the line 
" set virtualedit=onemore
set ve=onemore

" set the file search path
set path=.,,**

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" do incremental searching
set incsearch

" use spaces instead of tabs
set expandtab

" insert 4 spaces whenever the tab key is pressed
set tabstop=4

" set indentation to 4 spaces
set shiftwidth=4

" start new line at the same indentation level
set autoindent

" syntax highlighting
syntax enable

" show matching bracets when text indicator is over them
set showmatch

" set encoding for vim
set encoding=utf-8

" set fold method
set foldmethod=indent

" colorscheme
"colorscheme peachpuff

" set up for Lokaltog/vim-powerline
set laststatus=2
let g:Powerline_symbols='unicode'

" set up font and font size
" colorscheme monokai
" colorscheme desert
colorscheme desert-warm-256
" set guifont=Consolas:h15

" configuration for PowerLine
"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=Inconsolata\ for\ Powerline\ 10
"set guifont=PowerlineSymbols
"set guifont=Monaco\ for\ Powerline
"set guifont="Ubuntu\ Mono"

set encoding=utf-8
set termencoding=utf-8
" needn't set nocompatible because when exists .vimrc, nocompatible is set
" automatically
" set nocompatible
set t_Co=256
let g:Powerline_symbols="fancy"
"let g:Powerline_symbols="unicode"
"let Powerline_symbols="compatible"
"}

" configuration for indentLine
" map <leader>il : IndentLinesToggle<CR>
let g:indentLine_char = '|'
" see if it is gvim or vim
if has('gui_running')
    let g:indentLine_color_term = '#A4E57E'
else
    let g:indentLine_color_term = 239
endif

" show cursor line at the current line (Ensure to put this line behind the
" color scheme)
"set cursorline
set cursorline cursorcolumn
"highlight cursorline term=bold cterm=bold ctermfg=darkred ctermfg=White guibg=Grey40 guifg=white
highlight CursorLine term=bold cterm=bold guibg=Grey40 guifg=white
"highlight CursorColumn term=bold cterm=bold guibg=Grey40 guifg=white
hi CursorColumn term=bold cterm=bold ctermbg=none ctermfg=none guibg=Grey40 guifg=white

" disable cursor blink
set guicursor+=a:blinkon0

" set up for YouCompletMe
" set up completion even in comments
let g:ycm_complete_in_comments=1

" set up the completion configuration file
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" set up the minimum number for the completion
let g:ycm_min_num_of_chars_for_completion=2

" set up the diagnostics_ui
let g:ycm_show_diagnostics_ui=1

" set up for the error symbol (already set by default)
let g:ycm_error_symbol='✗'

" set up for the warning symbol
let g:ycm_warning_symbol='⚠'

" set not to prompt whether to load the extra configuration file
"let g:ycm_confirm_extra_conf=1

" set leader key
"let mapleader='\'

" mapping the key to GoToDecalration, GoToDefinition, GoToDefinitionElseDeclaration and YcmDiags
nnoremap <leader>gl : YcmCompleter GoToDecalration<CR>
nnoremap <leader>gf : YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg : YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> : YcmDiags<CR>

" close the stupid window when going to insert mode or leaving insert mode
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|lclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|lclose|endif

