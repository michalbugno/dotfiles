set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'Lokaltog/vim-powerline'
Plugin 'kchmck/vim-coffee-script'
Plugin 'nono/vim-handlebars'
Plugin 'groenewege/vim-less'
Plugin 'rking/ag.vim'
Plugin 'mv/mv-vim-nginx'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

let g:ctrlp_map = "<Leader>f"
let g:ctrlp_custom_ignore = 'build/\|\.agility-shared\|node_modules\|\.git\|tmp\|public/'

com Q q
com W w
com Wq wq
com WQ wq

try
  colorscheme solarized
catch
endtry

set background=dark

" share clipboard
set clipboard=unnamed

let mapleader = "\<Space>"
nmap <leader>w :w!<cr>
nmap <leader><leader> :e #<cr>

" scroll when you are that far from edge
set scrolloff=8

set colorcolumn=80

set visualbell t_vb=
set nofoldenable

" always show status line
set laststatus=2

set wrapscan
" set textwidth=80

set shortmess+=I

function InsertTabWrapper()
      let col = col('.') - 1
      if !col || getline('.')[col - 1] !~ '\k'
          return "\<tab>"
      else
          return "\<c-p>"
      endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

filetype plugin on
filetype indent on

au BufRead,BufNewFile *.hamlc set ft=haml

" disable the insert mode on default
set noinsertmode

" incremental searching - match partially typed search
set incsearch

" ignore case when searching
set ignorecase

" enable case-sensitivity when some upper-case letter exists in search
set smartcase

" show special chars at eol/trailing spaces etc.
set list

" default to utf-8
set encoding=utf-8

" default terminal encoding
set termencoding=utf-8

" define those special chars
set listchars=tab:»\ ,trail:·

" line numbers
set number

" width of numbers
set numberwidth=2

" enable syntax highlighting
syntax on

" enable highlighting the search
set hlsearch

" enable highlighting line the cursor is at
set cursorline

" show the status of cursor
set ruler

" own ruler format
set rulerformat=%9(%l,\ %c%)

" number of undo's
set undolevels=2000

" normal backspace
set backspace=indent,eol,start

" how many spaces tab takes
set tabstop=2

" spaces of autoindent
set shiftwidth=2

" <tab> inserts <shiftwidth> spaces
set smarttab

" do expand <tab> to spaces
set expandtab

" indent automatically
set autoindent

" smart indenting
set smartindent

" auto c indenting
set cindent

" timeout when mapping
set timeout

" msecs for timeout
set timeoutlen=500

" enable modelines
set modeline

" keep backup after overwriting file
set backup

" where to keep backups
set backupdir=/Users/msq/.vim/backup,/tmp
set directory=/Users/msq/.vim/backup,/tmp

" keep n last commands
set history=100

" suffixes with lower priority
set suffixes=.bak,~,.h,.swp,.aux,.log,.out,.toc

" ignore those files when searching
set wildignore=*.o,*.pdf,*.class,*.pyc
