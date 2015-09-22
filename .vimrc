set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"Plugin Manager
Plugin 'gmarik/Vundle.vim'

"--------------------
"lean & mean status/tabline for vim that's light as air
Plugin 'bling/vim-airline'
Plugin 'powerline/powerline'
"config for airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"DejaVu 100 Mono 12pt
"--------------------


"Rename
Plugin 'danro/rename.vim'

"Vagrant
Plugin 'markcornick/vim-vagrant'

"-------------------
"Comment
Plugin 'tomtom/tcomment_vim'
Plugin 'scrooloose/nerdcommenter'

"--------------------
"Git wrapper
Plugin 'tpope/vim-fugitive'

"---------------------

"The unite or unite.vim plug-in can search and display information from
"arbitrary sources like files, buffers, recently used files or registers
":Unite file buffer
Plugin 'Shougo/unite.vim'

"----------------------
"This plugin is a front for ag, A.K.A. the_silver_searcher. Ag can be used as
"a replacement for 153% of the uses of ack. This plugin will allow you to run
"ag from vim, and shows the results in a split window.
":Ag [option] {pattern} [{directory}]
Plugin 'rking/ag.vim'
"Config for ag
"Start searching from your project root instead of the cwd
let g:ag_working_path_mode="r"
"----------------------

"Most Recently Used (MRU) Vim Plugin
Plugin 'yegappan/mru'

"---------------------
"EasyMotion provides a much simpler way to use some motions in vim.
" default: \\w search
Plugin 'easymotion/vim-easymotion'
hi link EasyMotionTarget Search
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search
hi link EasyMotionShade Comment
"replace the default vim search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
"n to go to the next
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
"nmap s <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-t2)

"visual mode + \\l
"select first line letter, select last line letter
Plugin 'haya14busa/vim-easyoperator-line'

"visual mode + \\p
"first char, last char, first highlight, last highlight
Plugin 'haya14busa/vim-easyoperator-phrase'

"motion: word forward : w
"motion: word backward: b
"----------------------
"Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
"tags, and more. The plugin provides mappings to easily delete, change and add
"such surroundings in pairs.
Plugin 'tpope/vim-surround'

"--------------------
"visually displaying indent levels in Vim.
Plugin 'nathanaelkane/vim-indent-guides'
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
"--------------------

Plugin 'chrisbra/csv.vim'

"a code-completion engine for Vim
Plugin 'Valloric/YouCompleteMe'

"ctags support
"brew install ctags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
let g:easytags_async = 1

"brew install gotags
"gotags -R=true /Users/pierrecaserta/Documents/workspace/golang/src/_sources/go-master/src/ > ~/.vimtags
Plugin 'majutsushi/tagbar'
nmap <C-t> :TagbarToggle<CR>

"------------------------
"Better whitespace highlighting for Vim
":ToggleWhitespace
":CurrentLineWhitespaceOn
":StripWhitespace
Plugin 'ntpeters/vim-better-whitespace'
set expandtab
set tabstop=4
:autocmd BufWritePre * :StripWhitespace

"--------------------
"A command-line fuzzy finder written in Go
Plugin 'junegunn/fzf'
map <silent> <C-f> :FZF<CR>
"--------------------


"swap line plugin for vim
"key mapping to c-j and c-k
Plugin 'dougnukem/vim-swap-lines'

"-----------------------
"Use RCS to keep a backup version whenever you save a file
Plugin 'vim-scripts/rcsvers.vim'
"config rcsvers.vim
"(saving all files in a single directory) the script will save them to $VIM/RCSFiles.
"install http://rudix.org/packages/rcs.html
let g:rvSaveDirectoryType = 1
let g:rvSaveDirectoryName="~/.RCSFiles/"

"----------------------
Plugin 'scrooloose/nerdtree'
"Nerdtree config
map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>+ :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>- :exe "vertical resize -8"<CR>
"Open NERDTree at startup
"autocmd VimEnter * NERDTree
"--------------------


Plugin 'scheakur/vim-scheakur'

"CoffeeScript support for vim
Plugin 'kchmck/vim-coffee-script'

"Plugin for R
Plugin 'jcfaria/Vim-R-plugin'

"-----------------
"Syntax checking hacks for vim
"Plugin 'scrooloose/syntastic'
"config for syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"""""""""""""""


"----------------
"Ruby evaluation inside file using xmpfilter
"which is available in the rcodetools gem.
Plugin 't9md/vim-ruby-xmpfilter'
"xmpfilter config for ruby evaluation
nmap <Leader>ruby <Plug>(xmpfilter-run)
xmap <Leader>ruby <Plug>(xmpfilter-run)
imap <Leader>ruby <Plug>(xmpfilter-run)
"------------------

Plugin 'fatih/vim-go'
":GoInstallBinaries
Plugin 't-yuki/vim-go-coverlay'
"config
au FileType go nmap <leader>c <Plug>(go-coverlay)
au FileType go nmap <leader>C <Plug>(go-clearlay)
au BufWritePost *.go call go#coverlay#Coverlay()
"Plugin 'gryski/vim-godef'
"git clone https://github.com/dgryski/vim-godef ~/.vim/bundle/vim-godef


"------------------
Plugin 'NLKNguyen/papercolor-theme'
syntax enable
syntax on
filetype plugin indent on    " required
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
"DED9A6
"DEDAAB
"F5F2CE


Plugin 'rstacruz/sparkup'

"------------------
"Plugin 'L9'
"fast search
"Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'user/L9', {'name': 'newL9'}
"-------------------

call vundle#end()            " required

"run golint before save
"autocmd BufWritePost *.go execute 'GoLint' | cwindow
"set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

colorscheme PaperColor
set number
" shows row and column number at bottom right corner
set ruler
set paste

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
