set nocompatible               " be iMproved
  filetype off                   " required!
	syntax on
	set ts=2

 set rtp+=~/.vim/bundle/vundle.vim
 call vundle#begin()

 " let Vundle manage Vundle
 " required! 
 Plugin 'gmarik/vundle'

 " My Plugins here:
 "
 " original repos on github
 Plugin 'tpope/vim-fugitive'
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'tpope/vim-rails.git'
 Plugin 'scrooloose/nerdtree'
 Plugin 'kien/ctrlp.vim'
 Plugin 'msanders/snipmate.vim'
 Plugin 'mileszs/ack.vim'
 Plugin 'Shougo/neocomplcache.vim'
 Plugin 'Townk/vim-autoclose'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'Lokaltog/vim-powerline'
 " vim-scripts repos
 Plugin 'L9'
 Plugin 'FuzzyFinder'
 " non github repos
 Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (ie. when working on your own plugin)
 " ...

 call vundle#end()
 filetype plugin indent on     " required!
 "
 " Brief help
 " :PluginList          - list configured bundles
 " :PluginInstall(!)    - install(update) bundles
 " :PluginSearch(!) foo - search(or refresh cache first) for foo
 " :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Plugin command are not allowed..

 " NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

 "neocomplache config
 let g:neocomplcache_enable_at_startup = 1
 let g:neocomplcache_force_overwrite_completefunc = 1

 "other config
 set nu
 set mouse=a
 set tabstop=2
 let mapleader = ","  
 let g:mapleader = ","  
 map Y "+y  
 map P "+p  ""

 "easymotion
 let g:EasyMotion_leader_key = '<Leader>'

 "powerline config
 set t_Co=256
 set laststatus=2
 set encoding=utf-8  
 set fillchars+=stl:\ ,stlnc:\

 "scheme
colo molokai
let g:molokai_original = 1 
let g:rehash256 = 1
