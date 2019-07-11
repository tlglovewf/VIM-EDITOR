set number
set nocompatible
set history=1000
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
:set cscopequickfix=s-,c-,d-,i-,t-,e-
"检测文件类型
filetype on
"根据文件加载对应类型
filetype plugin on
"高亮当前行
set cursorline
set hlsearch
"自动完成大括号
imap { {<CR>}<Esc>kA<CR>
"文件被改动时自动加载
set autoread 
"make 运行
:set makeprg=g++\ -Wall\ \ %
"自动保存
set autowrite
set ruler
"忽略大小写
set ignorecase
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set cmdheight=2

"通过commands命令　告诉我们哪一行被改过
set report=0
set matchtime=1
set showmatch
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"隐藏工具栏
set guioptions-=T
"隐藏菜单栏
set guioptions-=m
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
    Plugin 'scrooloose/syntastic'
    Plugin 'scrooloose/nerdtree'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'Yggdroot/indentLine'
    Plugin 'winmanager'
    Plugin 'comments.vim'
    " 项目文件模糊查询
    Plugin 'ctrlpvim/ctrlp.vim'
    " 模糊查询
    Plugin 'tacahiroy/ctrlp-funky'
call vundle#end()

"vmap <C-c> "+y
"map  <C-A> ggVGY
"nnoremap <Leader>fu :CtrlPFunkey<Cr>
"nnoremap <Leader>fU :execute 'CtrlPFunkey ' . expand('<cword>')<Cr>

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"关键语法补全
let g:ycm_seed_identifiers_with_syntax=1
"注释中补全
let g:ycm_complete_in_comments=1
"键入补全最小字符数
let g:ycm_min_num_of_chars_for_completion=3



let g:syntastic_check_on_open=1
let g:syntastic_auto_loc_list=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

set t_Co=256
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#buffer_nr_show = 1


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git)$'

" nerdtree
" <Nerdtree>-------------------{
    ">> Basic settings
        let g:NERDTreeChDirMode = 2  "Change current folder as root
        autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif

    ">> UI settings
        let NERDTreeQuitOnOpen=1   " Close NERDtree when files was opened
        let NERDTreeMinimalUI=1    " Start NERDTree in minimal UI mode (No help lines)
        let NERDTreeDirArrows=1    " Display arrows instead of ascii art in NERDTree
        let NERDTreeChDirMode=2    " Change current working directory based on root directory in NERDTree
        let g:NERDTreeHidden=1     " Don't show hidden files
        let NERDTreeWinSize=30     " Initial NERDTree width
        let NERDTreeAutoDeleteBuffer = 1  " Auto delete buffer deleted with NerdTree
        "let NERDTreeShowBookmarks=0   " Show NERDTree bookmarks
        let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']   " Hide temp files in NERDTree
        "let g:NERDTreeShowLineNumbers=1  " Show Line Number
    " Open Nerdtree when there's no file opened
        "autocmd vimenter * if !argc()|NERDTree|endif
    " Or, auto-open Nerdtree
        "autocmd vimenter * NERDTree
    " Close NERDTree when there's no other windows
       " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " Customize icons on Nerdtree
        let g:NERDTreeDirArrowExpandable = '▸'
        let g:NERDTreeDirArrowCollapsible = '▾'

    ">> NERDTREE-GIT
        " Special characters
    let g:NERDTreeIndicatorMapCustom = { 
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
    \ }

    ">> NERDTree-Tabs
        "let g:nerdtree_tabs_open_on_console_startup=1 "Auto-open Nerdtree-tabs on VIM enter
    ">> Nerdtree-devicons
        "set guifont=DroidSansMono_Nerd_Font:h11
    ">> Nerdtree-syntax-highlighting
        let g:NERDTreeDisableFileExtensionHighlight = 1
        let g:NERDTreeDisableExactMatchHighlight = 1
        let g:NERDTreeDisablePatternMatchHighlight = 1
        let g:NERDTreeFileExtensionHighlightFullName = 1
        let g:NERDTreeExactMatchHighlightFullName = 1
        let g:NERDTreePatternMatchHighlightFullName = 1
        let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
        let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
        let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
" }

"map <F3> :NERDTreeMirror<CR>
"map <F3> :NERDTreeToggle<CR>

"nnoremap <leader>ff :FufFile<CR> 
"nnoremap <leader>fb :FufBuffer<CR> 
map <C-S-R> :FufFileRecursive<CR>
"nmap <F2> :FufFileWithCurrentBufferDir<CR>

syntax on
syntax enable
set t_Co=256
colorscheme molokai


"=========================
""       5. taglist
"=========================
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Sort_Type = "name"
let Tlist_WinWidth=40
let Tlist_Auto_Highlight_Tag=1 
let Tlist_Auto_Update=1 
let Tlist_Display_Tag_Scope=1 
let Tlist_Exit_OnlyWindow=1 
let Tlist_Enable_Dold_Column=1 
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Show_One_File=1 
let Tlist_Use_Right_Window=1 
let Tlist_Use_SingleClick=1 

"autocmd vimenter * if !argc()|NERDTree | endif 
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout='NERDTree|TagList,BufExplorer' " 设置我们要管理的插件
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

let g:persistentBehaviour=0 " if all explorer exit then close vim

let g:AutoOpenWinManager=1

nnoremap <silent> <F3> :WMToggle<CR> 


" -- MiniBufferExplorer --
"
  let g:miniBufExplMapWindowNavVim = 1 "
"  按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
"
  let g:miniBufExplMapWindowNavArrows = 1 "
"  按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
"
  let g:miniBufExplMapCTabSwitchBufs = 1 "
"  启用以下两个功能：Ctrl+tab移到下一个buffer并在当前窗口打开；Ctrl+Shift+tab移到上一个buffer并在当前窗口打开；ubuntu好像不支持
"
let g:miniBufExplMapCTabSwitchWindows = 1 "
"  启用以下两个功能：Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口；ubuntu好像不支持
"
  let g:miniBufExplModSelTarget = 1 "
"  不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer

let g:ctrlp_max_height = 15


"C,C++ F5 compile
map <F5> :call CompileRunGcc()<CR>

fun!CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ -std=gnu++11 % -o %<"
        exec "! ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ -std=gnu++11 % -o %<"
        exec "! ./%<"
    elseif &filetype == 'sh'
        :!./%
    endif 
endfunc

"C,C++的调试
map <F10> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ -std=gnu++11 % -g -o %<"
    exec "!gdb ./%<"
endfunc

map<F12> : call GenerateCtags()<CR>

if filereadable("cscope.out")
    execute "cs add cscope.out"
endif

function! GenerateCtags()
    let dir = getcwd()
    if filereadable("tags")
        let tagsdeleted=delete("./"."tags")
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        let csfilesdeleted=delete("./"."cscope.files")
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Failed to do cscope! I cannot delete cscope.files" | echohl None
            return 
        endif
    endif
    if filereadable("cscope.out")
        let csoutdeleted=delete("./"."cscope.out")
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope!I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cc' -o -name '*.cpp' > cscope.files"
        silent! execute "!cscope -Rbq"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif 
    endif 
endfunction
" 查找Ｃ代码符号
nmap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" 查找本文件
nmap <leader>f :cs find f <C-R>=expand("<cword>")<CR><CR>
" 查找本函数调用的函数
nmap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" 查找调用本函数的函数
nmap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" 查找本定义
nmap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>
