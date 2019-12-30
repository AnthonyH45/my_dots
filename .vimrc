if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim Plugins to use
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'kooparse/vim-color-desert-night'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Replace <YOURS> with your GitHub username and password/Personal-Access-Token
let g:github_dashboard = { 'username': '<USER>', 'password': '<PASSWORD/PERSONAL-ACCESS-TOKEN>' }
let g:github_dashboard['position'] = 'top'
let g:github_dashboard['open_command'] = 'open'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

syntax on
" for use in tty# when true color isnt available
set t_Co=256
colorscheme desert-night

filetype indent plugin on

" Found these online, i forgot where i got them
set hidden
set ai
set mouse=a
set incsearch
set confirm
set number
set ignorecase
set smartcase
set wildmenu
set showcmd
set hlsearch
set nomodeline
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set shiftwidth=4
set softtabstop=4
set expandtab

" C-J,K,L,H to move between split panes and files
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" C-t to make the background cycle between being tansparent or not
let t:is_transparent = 0
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        if t:is_transparent == 1
            let t:is_transparent = 0
        else 
            let t:is_trasparent = 1
        endif
    endif
endfunction
nnoremap <C-t> : call Toggle_transparent()<CR>
