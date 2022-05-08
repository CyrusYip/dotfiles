
" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	      for Haiku:  ~/config/settings/vim/vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    " set undodir=~/.vim/undo_dir " todo: create dir if notexit
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" show number
set number relativenumber
set numberwidth=1

" enable clipboard
set clipboard^=unnamed,unnamedplus

" show whitespaces
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
":set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
":set list

" indent
set smartindent
set autoindent

" tab
set smarttab
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


filetype plugin on

" switch buffers without saving
set hidden

" search all subdirectory of current directory
set path+=**

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" plugins
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug '907th/vim-auto-save'
" Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/tagalong.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
" Plug 'altercation/vim-colors-solarized'
" Plug 'lifepillar/vim-solarized8'
" Plug 'endel/vim-github-colorscheme'
Plug 'junegunn/vim-peekaboo'
Plug 'simnalamburt/vim-mundo'

" Markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
let g:vim_markdown_toc_autofit = 1
call plug#end()

" keybindings

" fzf keybindings
" nnoremap <silent> <C-f> :Files<CR>
" nnoremap <silent> <Leader>f :Rg<CR>

" clear search highlight 
nnoremap <esc><esc> :noh<return><esc>

" replace grep with rg
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" true color
if (has("termguicolors"))
  set termguicolors
endif
if $TERM == "xterm-256color"
  set t_Co=256
endif

" tmux color
set term=xterm-256color
if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes work
  " properly within 256-color terminals
  set t_ut=
endif

" theme
set background=light
colorscheme gruvbox
" colo seoul256-light

" case insensitive
set ignorecase smartcase
