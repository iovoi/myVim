"==============================================================================
"                            Required by Vundle Itself                       
"==============================================================================

" set up for vundle (plugins manager)
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"Plugin Lokaltog/powerline
"Plugin 'scrooloose/nerdtree'
"Plugin 'L9'
Plugin 'bling/vim-airline'
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
Plugin 'rainux/vim-desert-warm-256'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"==============================================================================

"==============================================================================
"                      Normal Vim Buildin Configuration                      
"==============================================================================

" syntax on
"syn on 
syntax on

" spell checking
"set spell
setlocal spell spelllang=en_us

" set number
set nu 

" set terminal color support
"set term=builtin_beos-ansi
"set t_Co=256
"if $COLORTERM == 'gnome-terminal'
    "set t_Co=256
    "set t_Co=gnome-256color
    "set t_Co=xterm-256color
"else
"    set t_Co=screen-256color
"endif

" colorscheme

"colorscheme desert
"color desert 
"colorscheme peachpuff
" This color scheme is using plugin from
" https://github.com/flazz/vim-colorschemes 
" And it incorporated monokai.vim (copy monokai.vim to 
" ~/.vim/bundle/vim-colorschemes/colors) from 
" https://github.com/sickill/vim-monokai
"colorscheme monokai

" This color scheme use plugin from
" https://github.com/rainus/vim-desert-warm-256
if !has('gui_running')
    "colorscheme desert-warm-256
    colorscheme desert
else
    "colorscheme monokai
    colorscheme desert
endif

" needn't to set nocompatible because when exists .vimrc, nocompatible is set
" automatically
" set nocompatible

" indent automatically, depending on filetype
"""
" filetype indent on
"""

" set leader key
let mapleader='\'

" set autoindent
set ai 

" Case insensitive search
set ic 

" Highlight search
set hls

" wrap text instead of being on one line
set lbr

" Allow the cursor to move just one character past the end of the line 
" set virtualedit=onemore
set ve=onemore

" set the file search path
" double star (double asterisk, double wildcard) means the files in all
" subdirectories
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
set termencoding=utf-8

" set fold method
" 
" Indent folding with manual folds
" If you like the convenience of having Vim define folds automatically by 
" indent level, but would also like to create folds manually, you can get 
" both by putting this in your vimrc
"
" The first autocommand sets 'indent' as the fold method before a file is 
" loaded, so that indent-based folds will be defined. The second one allows 
" you to manually create folds while editing. It's executed after the modeline 
" is read, so it won't change the fold method if the modeline set the fold 
" method to something else like 'marker' or 'syntax'.
"
"augroup vimrc
"  au BufReadPre * setlocal foldmethod=indent
"  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END
"
"set foldmethod=indent
set fdm=indent

" show cursor line at the current line (Ensure to put this line behind the
" color scheme)
"set cursorline
"set cursorline cursorcolumn
set cursorline cursorcolumn
"highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=none guibg=White guifg=Grey35
"highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=none guibg=White guifg=Grey35 gui=underline
"highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=none guibg=White guifg=Grey35 gui=bold
"highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=none guifg=fg guibg=bg gui=bold
highlight CursorLine term=bold cterm=bold ctermfg=none ctermbg=none guibg=Grey20 gui=bold
"hi cursorcolumn term=bold cterm=bold ctermfg=none ctermbg=none guibg=White guifg=Grey35
"hi cursorcolumn term=bold cterm=bold ctermfg=none ctermbg=none guibg=White guifg=Grey35 gui=bold
hi cursorcolumn term=bold cterm=bold ctermfg=none ctermbg=none guibg=Grey20 gui=bold
"highlight cursorline term=bold cterm=bold ctermfg=darkred ctermbg=White guibg=Grey40 guifg=white
"highlight cursorline term=bold term=bold ctermfg=darkred ctermfg=blue guibg=blue guifg=blue
"highlight CursorLine term=bold cterm=bold guibg=Grey40 guifg=white
"highlight CursorLine term=bold cterm=bold guibg=#222222 guifg=#2b506e gui=none
"highlight CursorLine term=bold cterm=bold guibg=Grey40 guifg=LightBlue gui=underline
"highlight CursorLine term=bold cterm=bold guibg=Grey21 gui=none
"highlight CursorLine term=bold cterm=bold guibg=Grey15 gui=none
"highlight CursorColumn term=bold cterm=bold guibg=Grey40 guifg=white
"hi CursorColumn term=bold cterm=bold ctermbg=none ctermfg=none guibg=Grey40 guifg=white
"hi CursorColumn term=bold cterm=bold ctermbg=none ctermfg=none guibg=#222222 guifg=#2b506e gui=underline
"hi CursorColumn term=bold cterm=bold ctermbg=none ctermfg=none guibg=Grey40 guifg=LightBlue gui=none 
"hi CursorColumn term=bold cterm=bold  ctermbg=darkred ctermfg=blue guibg=blue guifg=LightBlue gui=bold 
"hi CursorColumn term=bold cterm=bold ctermbg=none ctermfg=none guibg=Grey21 gui=none
"hi CursorColumn term=bold cterm=bold ctermbg=none ctermfg=none guibg=Grey15 gui=none
"hi CursorColumn term=bold cterm=bold ctermbg=White ctermfg=darkred guibg=Grey15 gui=none

" an alternative way to display number at the SignColumn
"set relativenumber

" highlighting line number
"hi LineNumber ctermfg=DarkMagenta guifg=#2b506e guibg=#000000

" disable cursor blink
set guicursor+=a:blinkon0

" set complete options
" let the complete behaviour looks like the IDEs (see the VimTip1228)
set completeopt=longest,menuone

" set so that when pressing up down PageDown PageUp to display information
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" change the behavior of the <Enter> key when the popup menu is visible. 
" In that case the Enter key will simply select the highlighted menu item, 
" just as <C-Y> does.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" automatically open fold everytime enter into buffer
"normal zR\<CR>
"autocommand BufWinEnter * :normal zR\<cr>
autocmd BufWinEnter * :normal zR\<cr>

" Plugin airline
" Change status displayed in status bar from Insert to normal faster
"set timeoutlen=500

" Plugin syntastic
" close the window when going to insert mode or leaving
" insert mode 
" If you prefer the Omni-Completion tip window to close when a 
" selection is made, these lines close it on movement in insert 
" mode or when leaving insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|lclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|lclose|endif
"autocmd CursorMoved * if pumvisible() == 0|pclose|lclose|endif

" Plugin YouCompleteMe
" map lopen (open locationlist, YouCompleteMe plugin) to '\lo'
nnoremap <leader>lo :lopen<CR>	

" map lclose (close locationlist, YouCompleteMe plugin) to '\lc'
nnoremap <leader>lc :lclose<CR>	

"==============================================================================
"                 Below are the configuration for specific plugin
"==============================================================================

""==============================================================================
""                     Configuration for Plugin YouCompleteMe
""==============================================================================

" Force a full, blocking compilation cycle
" Calling this command will force YCM to immediately 
" recompile your file and display any new diagnostics 
" it encounters
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" open the locationlist 
" Calling YcmDiags command will fill Vim's locationlist with 
" errors or warnings if any were detected in your file and then 
" open it
nmap <F4> : YcmDiags<CR>

" mapping the key to GoToDecalration, GoToDefinition, 
" GoToDefinitionElseDeclaration and YcmDiags
nnoremap <leader>gl : YcmCompleter GoToDecalration<CR>
nnoremap <leader>gf : YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg : YcmCompleter GoToDefinitionElseDeclaration<CR>

" set this so that you can also see the full diagnostic 
" message for all the diagnostics in the current file 
" in Vim's locationlist, which can be opened with 
" the :lopen and :lclose commands
let g:ycm_always_populate_location_list = 1
" YCM will display a short diagnostic message when you move 
" your cursor to the line with the error. You can get a 
" detailed diagnostic message with the <leader>d key mapping 
" (can be changed in the options) YCM provides when your cursor 
" is on the line with the diagnostic.

" set the line displaying color for lines containing errors or warnings
highlight YcmErrorLine guibg=#3f0000 ctermbg=DarkGreen
highlight YcmWarningLine guibg=#3f0000 ctermbg=DarkGray

" set up the default completion configuration file
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_global_ycm_extra_conf='~/Desktop/.ycm_extra_conf.py'

" set up completion even in comments
let g:ycm_complete_in_comments = 1

" set to show the completion menu even when typing inside strings 
" This is by default turned on so I closed it
let g:ycm_complete_in_strings = 1

" set YCM's identifier completer to also collect identifiers 
" from strings and comments
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" ask every time the .ycm_extra_conf.py is loaded
let g:ycm_confirm_extra_conf = 1

" set up the minimum number for the completion
let g:ycm_min_num_of_chars_for_completion = 1

" set YCM's identifier completer to seed its identifier database with the 
" keywords of the programming language you're writing.
let g:ycm_seed_identifiers_with_syntax = 1

" show up the diagnostics_ui
let g:ycm_show_diagnostics_ui = 1

" set up for the error symbol
let g:ycm_error_symbol = '✗'

" set up for the warning symbol
let g:ycm_warning_symbol = '⚠'
""==============================================================================

"==============================================================================
"                     Configuration for Plugin gitgutter
"==============================================================================

" set to always shows the signs column (gutter column)
" require gitgutter plugin installed
"let g:gitgutter_sign_column_always = 1

" highlight signs column (gutter column)
"highlight SignColumn guibg=DarkGreen guifg=LightGreen ctermbg=DarkGreen ctermfg=LightGreen
"==============================================================================

"==============================================================================
"                     Configuration for Plugin Yggdroot/indentLine               
"==============================================================================
"
" map <leader>il : IndentLinesToggle<CR>
"let g:indentLine_char = '|'
let g:indentLine_char = '¦'
" see if it is gvim or vim
if has('gui_running')
    "let g:indentLine_color_gui = '#A4E57E'
    let g:indentLine_color_gui = Grey21
else
    let g:indentLine_color_term = 236
endif
"==============================================================================

"==============================================================================
"                     Configuration for Plugin Syntastic
"==============================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"==============================================================================

"==============================================================================
"                     Configure for Plugin airline                
"==============================================================================
set guifont=Ubuntu\ Mono\ derivative\ Powerline
set laststatus=2
let g:airline_powerline_fonts = 1
"==============================================================================

""==============================================================================
""                     Configure for Plugin Lokaltog/powerline                
""==============================================================================
"
"" setup process please refer to the offical website
"" of powerline (https://github.com/Lokaltog/powerline)
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
""call vam#ActivateAddons(['powerline'])
"
"" Always display the statusline in all windows
"set guifont=Ubuntu\ Mono\ derivative\ Powerline
"set guifont=Sauce\ Code\ Powerline\ Regular
"set guifont=Consolas:h20

" defaults fonts and size for Terminal.app of Pro profile is Monaco:h10
"set guifont=Monaco
"set guifont=Ubuntu\ Mono\ derivative\ Powerline
"set laststatus=2
""if !exists('g:airline_symbols')
""  let g:airline_symbols = {}
""endif
""  let g:airline_symbols.space = "\ua0"
"let g:airline_powerline_fonts = 1


"" Hide the default mode text (e.g. -- INSERT -- below the 
"" statusline)
""set noshowmode
"
""let g:Powerline_symbols='unicode'
""let Powerline_symbols="compatible"
"let g:Powerline_symbols="fancy"
"
"" set font
""set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Bold
""set guifont=InconsolataForPowerline
""set guifont=Consolas:h15
""set guifont=PowerlineSymbols\ for\ Powerline
""set guifont=Inconsolata\ for\ Powerline\ 10
""set guifont=Monaco\ for\ Powerline
""set guifont="Ubuntu\ Mono"
""set guifont=PowerlineSymbols
"if has("gui_running")
"    if has("gui_gtk2")
"        set guifont=InconsolataForPowerline\ 12
"    elseif has("gui_macvim")
"        set guifont=Consolas:h20
"    else
"        set guifont=InconsolataForPowerline\ 13
"    endif
"else
"    set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Bold
"endif
"
"" Fix termianl timeout when pressing escape
"" When you’re pressing Escape to leave insert mode in the terminal, 
"" it will by default take a second or another keystroke to leave 
"" insert mode completely and update the statusline. If you find this 
"" annoying, you can add the following snippet to your vimrc to escape 
"" insert mode immediately
"if ! has('gui_running')
"    set ttimeoutlen=10
"    augroup FastEscape
"        autocmd!
"        au InsertEnter * set timeoutlen=0
"        au InsertLeave * set timeoutlen=1000
"    augroup END
"endif
""==============================================================================
