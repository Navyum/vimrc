"vim configuration
set modelines=0
"delete func
set backspace=2
syntax enable
syntax on "syntax
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set smartindent 
set autoindent 
set confirm "confirm save file
set tabstop=4 "tab width
set softtabstop=4
set shiftwidth=4 "<,>=4
"set expandtab "not use space replace tab
set number "show nu
set history=50  "history max show 
set hlsearch
set incsearch "searh syntax
set gdefault "inline replace
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,utf-16,big5,euc-jp,latin1 "encoding 
colorscheme desert
set guifont=Menlo:h16:cANSI "set font
set langmenu=zn_CN.UTF-8
set helplang=cn  "set lang
set ruler "show cursor place
set laststatus=1  "always show status 
set showcmd 
set scrolloff=3 
set showmatch "show match 
set matchtime=5 
set autowrite 
set wildmenu  "auto fill cmd
set linespace=2 
filetype plugin indent on 
set foldenable  
set cursorline 
set magic  
filetype on "open file type check
set background=dark
set t_Co=256   "256
"set mouse=a  "allow mouse
set nocompatible              " required 
filetype off                  " required 

" NERDTree------------------------------------------------------
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
"let NERDTreeQuitOnOpen=1    " Nerdtree is quit, when file is opened
let NERDTreeShowBookmarks=1 " Display bootmark
"let NERDTreeChDirMode=2     " Root is default directory

" let mapleader = ","
map <F4> :NERDTreeToggle<CR>
map <C-F4> :NERDTreeFind<CR>

" Cscope------------------------------------------------------
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
	set nocsverb
	" add any database
	if filereadable("cscope.out")
		cs add cscope.out
		" else add pointed
	elseif $CSCOPE_DB!=""
        cs add $CSCOPE_DB
    endif
    set csverb
endif
" shortcuts
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
set cscopequickfix=c-,d-,e-,g-,i-,s-,t-
nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>

" Taglist------------------------------------------------------
"let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=1
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Left_Window=1

"winmanager setting <winmanager.vim>
let g:winManagerWindowLayout='FileExplorer|TagList'
"let g:NERDTree_title='NERD Tree'
"let g:winManagerWindowLayout='NERDTree|TagList'
let g:winManagerWidth='30'
nmap wm :WMToggle<cr>
"function! NERDTree_Start()
"    exec 'NERDTree'
"endfunction

"function! NERDTree_IsValid()
"    return 1
"endfunction
" set hotkey wm for winmanager

"grep setting <grep.vim>
nnoremap <silent> <F3> :Grep<CR>

".h/.cpp switch setting <a.vim>
nnoremap <silent> <F12> :A<CR>



" Vundle--------------------------------------------------------  
set rtp+=~/.vim/bundle/Vundle.vim  
 
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'  
Plugin 'scrooloose/nerdtree'
Plugin 'winmanager'
Plugin 'taglist.vim'
Plugin 'a.vim'
Plugin 'grep.vim'
Plugin 'cscope.vim'     " need cscope installed
filetype plugin indent on           " required


set buftype=
