set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='left'
let NERDTreeWinSize=35

Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

Plugin 'taglist.vim'
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1 "只显示一个文件中的tag，默认为显示多个
let Tlist_Use_Right_Window = 1  "让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
"let Tlist_Sort_Type =’name’ "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_WinWidth = 40

Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
set laststatus=2
"let g:airline_enable_fugitive=1
"let g:airline_section_b='%{fugitive#statusline()}'
let g:airline#extensions#whitespace#enabled = 0
Plugin 'tpope/vim-fugitive'


"Plugin 'altercation/vim-colors-solarized'
"syntax enable
"set background=dark
"colorscheme solarized

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"nerdtree-git-plugin

"set mapleader
let mapleader=","

" Key Map
map <silent> <F2> :NERDTreeToggle<CR>
map <silent> <F3> :TlistToggle<CR>
map <silent> <S-F8> :nohlsearch<CR>

" nerdTree
noremap <F12> :e %:p:s,.H$,.X123X,:s,.C$,.H,:s,.X123X$,.C,<CR>
let NERDTreeWinPos="left" "目录放在左侧 
let NERDTreeShowBookmarks=1 "自动现实书签
let NERDChristmasTree=1


" 语法高亮
syntax enable
"syntax on

set history=1000
set number
set cursorline "突出现实当前行
set showmatch
set t_Co=256 "指定配色方案为256色

set tabstop=4 "设置Tab宽度
set shiftwidth=4 "设置自动对齐空格数
set expandtab "将Tab键自动转换成空格,真正需要Tab键时使用[Ctrl + V + Tab]
set ignorecase "设置搜索时忽略大小写
let &termencoding=&encoding
set fileencodings=utf-8,gbk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    
" 实用功能    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    
"--------引号 && 括号自动匹配    
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap [ []<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
"--------启用代码折叠，用空格键来开关折叠     
set foldenable           " 打开代码折叠    
set foldmethod=syntax        " 选择代码折叠类型    
set foldlevel=100            " 禁止自动折叠    
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>    

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    
" 语言的编译和运行               
" " 支持的语言：java         F5编译(保存+编译)  F6运行    
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    
" func! CompileCode()    
"     exec "w"    
"         if &filetype == "java"    
"                 exec "!javac -encoding utf-8 %"    
"                     endif    
"                     endfunc    
"                     func! RunCode()    
"                         if &filetype == "java"    
"                                 exec "!java -classpath %:h; %:t:r"    
"                                     endif    
"                                     endfunc    
"                                          
"                                          " F5 保存+编译    
"                                          map <F5> :call CompileCode()<CR>    
"                                              
"                                              "  F6 运行    
"                                              map <F6> :call RunCode()<CR>




