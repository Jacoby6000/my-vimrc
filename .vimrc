let mapleader = "\<SPACE>"

if &compatible
  set nocompatible
endif

if has('nvim')
  call plug#begin('~/.config/nvim/plugged')
  execute pathogen#infect('~/.config/nvim/unmanaged/{}')
  Plug 'roxma/nvim-completion-manager'
  Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
  Plug 'neovimhaskell/haskell-vim'
else
  call plug#begin('~/.vim/plugged')
  execute pathogen#infect('~/.vim/unmanaged/{}')
  Plug 'Valloric/YouCompleteMe'
endif

Plug 'rking/ag.vim'
Plug 'robu3/vimongous'
Plug 'sirtaj/vim-openscad'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'derekwyatt/vim-scala'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'mileszs/ack.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
Plug 'geverding/vim-hocon'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-surround'
Plug 'rking/ag.vim'
Plug 'Yggdroot/indentLine'
Plug 'in3d/vim-raml'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jaxbot/syntastic-react'
Plug 'vim-scripts/greplace.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ternjs/tern_for_vim'
Plug 'gregsexton/matchtag'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'ensime/ensime-vim'
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'
Plug 'uarun/vim-protobuf'
Plug 'xolox/vim-misc'
Plug 'AndrewRadev/sideways.vim'
Plug 'sbdchd/neoformat'
Plug 'numkil/ag.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

for f in split(glob('~/.config/nvim/plugin-confs/*.vim'), '\n')
    exe 'source' f
endfor

for f in split(glob('~/.config/nvim/qol/*.vim'), '\n')
    exe 'source' f
endfor
