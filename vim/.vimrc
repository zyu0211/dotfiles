"===================================
""    Vim基本配置
"===================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

" 1=启动显示状态行, 2=总是显示状态行
" 设置总是显示状态行,方便看到当前文件名
set laststatus=2

"设置在编辑过程中右下角显示光标的行列信息
"此项不设置，改为自定义设置状态栏显示内容
" set ruler

"设置状态行显示的内容
” %F: 显示当前文件的完整路径
" %r: 如果readonly,会显示[RO]
“ %B: 显示光标下字符的编码值,十六进制
" %l:光标所在的行号. %v:光标所在的虚拟列号
" %P: 显示当前内容在整个文件中的百分比
" %H 和 %M 是 strftime() 函数的参数,获取时间. 
set statusline=%F%r\ [HEX=%B][%l,%v,%P]\ %{strftime(\"%H:%M\")}

"显示行号
set number
"当一行文字很长时取消换行
set nowrap

"使用Tab键补全时,在状态栏显示匹配的列表
"方便查看都有哪些命令符合补全条件
set wildmenu

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile
set nowritebackup

"突出现实当前行
set cursorline
"只高亮行号部分,不影响正文内容
set cursorlineopt=number
"突出现实当前列
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"高亮显示所有搜索到的内容
set hlsearch

"光标立刻跳转到搜索到内容
set incsearch

"搜索到最后匹配的位置后, 再次搜索不回到第一个匹配处
set nowrapscan

"去掉输入错误时的提示声音
set noeb 

"默认按下 Esc 后,需要等待 1 秒才生效
"设置 Esc 超时时间为 100ms, 尽快生效 
set ttimeout
set ttimeoutlen=100

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"设置换行符为unix
set ff=unix

"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on

"指定配色方案为256色
set t_Co=256
let g:airline_theme='one'
colorscheme one
set background=dark " for the dark version
" set background=light " for the light version

"====================================
""  插件
"====================================
call plug#begin('~/.vim/plugged')
"一个配色方案
Plug 'rakr/vim-one'
"更好看的状态栏
Plug 'vim-airline/vim-airline'
"引入注释命令
Plug 'tpope/vim-commentary'
call plug#end()

"===================================
"   自定义快捷键
"===================================
" leader键改为空格
nnoremap <space> <nop>
let mapleader = " "

" 关闭高亮
nnoremap <Esc> :nohlsearch<cr>
" 搜索文件
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
" 设置在分屏间移动的快捷键
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
" 设置移动分屏的快捷键
nnoremap <leader>H <c-w>H
nnoremap <leader>L <c-w>L
nnoremap <leader>J <c-w>J
nnoremap <leader>K <c-w>K
" 设置移动buffer的快捷键
nnoremap <leader><tab><tab> :bprevious<cr>
nnoremap <leader><tab> :bnext<cr>

nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>

nmap H ^
nmap L $
imap jk <Esc>

