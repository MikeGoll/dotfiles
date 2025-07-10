" Options for both vim and nvim
syntax on
filetype plugin on

set number
set relativenumber
set ai " Auto Indentation
set si " Smart Indentation
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set encoding=utf8
set hlsearch " Highlight search results
set termguicolors
set noswapfile " Disable swap files
set nofoldenable " Disable folding

if has('nvim') " Options for nvim
    silent! nmap <C-c> :CodeCompanionChat<CR>

    " Copy selection to system clipboard
    set mouse=a
    vmap <LeftRelease> "*ygv

else " Options for vim
    set guioptions=-m

	"=================================================
	"Vim Plug plugin manager
	"=================================================
	"Automatic vim-plug installation
	let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
	if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
	
	"Install vim-plug if not found
	if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	endif
	
	"Run PlugInstall if there are missing plugins
	autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	  \| PlugInstall --sync | source $MYVIMRC
	\| endif
	
	"Plugin Installation
	"Default plugin install directory => ~/.vim/plugged
	call plug#begin()
	    Plug 'scrooloose/nerdtree' "NerdTree
	    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }} "Markdown Preview (github.com/iamcco/markdown-preview.nvim)
	    "Run ':call mkdp#util#install' manually inside of VIM once this plugin is installed the first time to make it work
	call plug#end()
	"=================================================
	
	"=================================================
	"Nerdtree
	"=================================================
	"Start NERDTree when Vim is started without file arguments.
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
	silent! nmap <C-p> :NERDTreeToggle<CR>
	silent! map <F2> :NERDTreeFind<CR>
	silent! map <C-l> :noh<CR>
	let g:NERDTreeMapActivateNode="<F3>"
	let g:NERDTreeMapPreview="<F4>"
endif
