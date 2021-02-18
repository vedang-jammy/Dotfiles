" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
        Plug 'sheerun/vim-polyglot'
    " File Explorer
        Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
        Plug 'jiangmiao/auto-pairs'
        Plug 'dracula/dracula-theme'
        Plug 'morhetz/gruvbox'
        Plug 'jremmen/vim-ripgrep'
        Plug 'leafgarland/typescript-vim'
        Plug 'vim-utils/vim-man'
        Plug 'ctrlpvim/ctrlp.vim'
	      Plug 'mbbill/undotree'
	      Plug 'vim-airline/vim-airline'
      	Plug 'vim-airline/vim-airline-themes'
	      Plug 'ap/vim-css-color'
        Plug 'norcalli/nvim-colorizer.lua'
        Plug 'neoclide/coc.nvim'
        Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'airblade/vim-rooter'
        Plug 'liuchengxu/vim-which-key'
        Plug 'mhinz/vim-startify'
call plug#end()

