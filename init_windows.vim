 "Plugins

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/preservim/nerdtree' ", {'on': 'NERDTreeToggle'}
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/RRethy/nvim-base16' " Base16 Color Schemes
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/preservim/tagbar', {'on': 'TagbarToggle'} " Tagbar for code navigation
Plug 'https://github.com/dkarter/bullets.vim'
Plug 'https://github.com/junegunn/fzf.vim' " Fuzzy Finder, Needs Silversearcher-ag for :Ag
Plug 'https://github.com/junegunn/fzf'
Plug 'https://github.com/glepnir/dashboard-nvim'
Plug 'https://github.com/davidhalter/jedi-vim'
Plug 'github/copilot.vim'
Plug 'https://github.com/mbbill/undotree'
Plug 'https://github.com/numirias/semshi'
Plug 'https://github.com/tpope/vim-fugitive'

call plug#end()

" General Configuration

set number
set relativenumber
set mouse=a
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set encoding=UTF-8

:colorscheme base16-onedark
let g:airline_theme='onedark'

" NERDTree Configuration

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:python_highlight_all = 1

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :UndotreeToggle<CR>

" VIM AIRLINE CONFIGURATION

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text'
    \]

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Tagbar

nmap <F8> :TagbarToggle<CR>

" Dashboard

let g:dashboard_default_executive ='fzf'

" Semshi Custom Highlightss

function MyCustomHighlights()
    hi semshiGlobal      ctermfg=blue guifg=#61afef
	hi semshiImported    ctermfg=red guifg=#d28fd7 cterm=bold gui=bold
	hi semshiBuiltin     ctermfg=yellow guifg=#f5d08b
	hi semshiSelected    ctermfg=white guifg=#dddddd ctermbg=gray guibg=#454c5a
endfunction
autocmd FileType python call MyCustomHighlights()
