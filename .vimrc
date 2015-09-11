set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin Manager
Plugin 'gmarik/Vundle.vim'

"Rename
Plugin 'danro/rename.vim'

"Vagrant
Plugin 'markcornick/vim-vagrant'


"Comment
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdcommenter'

"Git wrapper
Plugin 'tpope/vim-fugitive'

"The unite or unite.vim plug-in can search and display information from
"arbitrary sources like files, buffers, recently used files or registers
":Unite file buffer
Plugin 'Shougo/unite.vim'

"This plugin is a front for ag, A.K.A. the_silver_searcher. Ag can be used as
"a replacement for 153% of the uses of ack. This plugin will allow you to run
"ag from vim, and shows the results in a split window.
":Ag [option] {pattern} [{directory}]
Plugin 'rking/ag.vim'

"Most Recently Used (MRU) Vim Plugin
Plugin 'yegappan/mru'

"EasyMotion provides a much simpler way to use some motions in vim.
" default: \\w search
Plugin 'easymotion/vim-easymotion'

"Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
"tags, and more. The plugin provides mappings to easily delete, change and add
"such surroundings in pairs.
Plugin 'tpope/vim-surround'

"visually displaying indent levels in Vim.
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'chrisbra/csv.vim'

"a code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'

"ctags support
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

"lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'

"Better whitespace highlighting for Vim
":ToggleWhitespace
":CurrentLineWhitespaceOn
":StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'

"A command-line fuzzy finder written in Go
Plugin 'junegunn/fzf'

"swap line plugin for vim
"key mapping to c-j and c-k
Plugin 'dougnukem/vim-swap-lines'

"Use RCS to keep a backup version whenever you save a file
Plugin 'vim-scripts/rcsvers.vim'

Plugin 'scrooloose/nerdtree'


Plugin 'scheakur/vim-scheakur'

"CoffeeScript support for vim
Plugin 'kchmck/vim-coffee-script'

"Plugin for R
Plugin 'jcfaria/Vim-R-plugin'

"Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

"Ruby evaluation inside file using xmpfilter 
"which is available in the rcodetools gem.
Plugin 't9md/vim-ruby-xmpfilter'

Plugin 'fatih/vim-go'

Plugin 'NLKNguyen/papercolor-theme'

"Plugin 'L9'

"Plugin 'git://git.wincent.com/command-t.git'

"Plugin 'file:///home/gmarik/path/to/plugin'


"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'

call vundle#end()            " required
syntax enable
syntax on 
filetype plugin indent on    " required


set number
" shows row and column number at bottom right corner
set ruler


" config for vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
set backspace=indent,eol,start
set bs=2
set sw=4
set ts=4
"""""""""

"config for airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"""""""

"config rcsvers.vim
"(saving all files in a single
""       directory) the script will save them to $VIM/RCSFiles.
let g:rvSaveDirectoryType = 1
let g:rvSaveDirectoryName="~/.RCSFiles/"

set expandtab
set tabstop=4


"config for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"""""""""""""""

"Config for ag
"Start searching from your project root instead of the cwd
let g:ag_working_path_mode="r"


"detailed 8/10
"sean 9/10
"spring 7/10
"thor 8/10
"tibet 8/10
"turbo 7/10
"colorscheme turbo
set t_ut=
set t_Co=256   " This is may or may not needed.
set background=light
"let g:PaperColor_Light_Override = { 'background' : '#D8D2B7' } ", 'cursorline' : '#dfdfff', 'matchparen' : '#d6d6d6' , 'comment' : '#8e908c' }
colorscheme PaperColor
"DED9A6
"DEDAAB
"F5F2CE
"Open NERDTree at startup
autocmd VimEnter * NERDTree

"xmpfilter config for ruby evaluation
nmap <Leader>ruby <Plug>(xmpfilter-run)
xmap <Leader>ruby <Plug>(xmpfilter-run)
imap <Leader>ruby <Plug>(xmpfilter-run)

set paste


