" Plugins
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


" Accessibility
set clipboard=unnamed               " Use the macOS clipboard
set mouse=a                         " Allow the use of the mouse

" Lines
set number                          " Show line numbers
set scrolloff=3                     " Always keep 3 lines above/below the curser


" Set 256 colors
set t_Co=256

" Set space as leader key
map <Space> <Leader>

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on

" Enable filetype plugins
filetype plugin on

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" show line numbers by default
" set relativenumber

" Case-sensitive search
set smartcase

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" reload files when they change on disk (e.g., git checkout)
set autoread

" Show fzf Files results with a preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Show fzf Ag results with a preview window
  command! -bang -nargs=* Ag
    \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <C-P> :Files<CR>
