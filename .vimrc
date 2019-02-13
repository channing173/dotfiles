set number

map <F5> :setlocal spell! spelllang=en_us<CR>

" use four spaces for each step of (auto)indent.
set shiftwidth=4

" hitting <Tab> will insert four spaces instead.
set tabstop=4
set softtabstop=4

" round indent to multiple of shiftwidth.
set shiftround

" use spaces instead of tabs to insert a tab.
set expandtab

" copy indent from current line when starting a new line
" (also deletes indents if nothing else is written on the line)
set autoindent

" wrap lines at 80 characters
set textwidth=80

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

Plug 'lervag/vimtex'

Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()

let g:vimtex_view_general_viewer = 'zathura'
let g:tex_flavor = 'tex'
let g:vimtex_quickfix_latexlog = {'default' : 0}
