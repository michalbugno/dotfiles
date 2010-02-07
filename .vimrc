com Q q
com W w
com Wq wq
com WQ wq

colorscheme wombat

set visualbell t_vb=
set nofoldenable

"
" command + num tabs
map <d-1> :tabn 1<Return>
map <d-2> :tabn 2<Return>
map <d-3> :tabn 3<Return>
map <d-4> :tabn 4<Return>
map <d-5> :tabn 5<Return>
map <d-6> :tabn 6<Return>
map <d-7> :tabn 7<Return>
imap <d-1> <Esc>:tabn 1<Return>
imap <d-2> <Esc>:tabn 2<Return>
imap <d-3> <Esc>:tabn 3<Return>
imap <d-4> <Esc>:tabn 4<Return>
imap <d-5> <Esc>:tabn 5<Return>
imap <d-6> <Esc>:tabn 6<Return>
imap <d-7> <Esc>:tabn 7<Return>

""""""""""""""""
" Filetypes
""""""""""""""""""""
" autocmd! BufRead,BufNewFile *.m setfiletype objc
" autocmd! BufRead,BufNewFile *.h setfiletype objc
autocmd! BufRead,BufNewFile *.c set tabstop=4 noexpandtab shiftwidth=4
" autocmd! BufRead,BufNewFile *.haml setfiletype haml
" autocmd! BufNewFile,BufRead *.yaml,*.yml setfiletype yaml


set wrapscan
set textwidth=80


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy finder
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <d-f> :FuzzyFinderFile<Return>
imap <d-f> <Esc>:FuzzyFinderFile<Return>
map <D-f> :FuzzyFinderFile<Return>
imap <D-f> <Esc>:FuzzyFinderFile<Return>


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

" My new, shiny .vimrc file with loads of comments, ultra-sleaky, top-shelf
" based on :options

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 important
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable the VI compatibility
set nocompatible

" disable the insert mode on default
set noinsertmode


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2 moving around, searching and patterns
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" incremental searching - match partially typed search
set incsearch

" ignore case when searching
set ignorecase

" enable case-sensitivity when some upper-case letter exists in search
set smartcase


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 3 tags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4 displaying text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show special chars at eol/trailing spaces etc.
set list

" define those special chars
set listchars=tab:»\ ,trail:·

" line numbers
set number

" width of numbers
set numberwidth=3


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 5 syntax, highlighting and spelling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the dark background - save your eyes
set background=dark

" enable syntax highlighting
syntax on

" enable highlighting the search
set hlsearch

" enable highlighting line the cursor is at
set cursorline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 6 multiple windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" own status line format
" set statusline=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 7 multiple tab pages
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 8 terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 9 using the mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 10 GUI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set font type and height
" set guifont=Monaco:h14
set guifont=Inconsolata:h14

" nice antialiasing (default for macvim)
set antialias

" when fullscreen, set the lines and columns to max (macvim)
if has("gui_macvim")
  set fuoptions=maxvert,maxhorz
endif

" don't display menu
set guioptions-=T


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 11 printing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 12 messages and info
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show the status of cursor
set ruler

" own ruler format
set rulerformat=%9(%l,\ %c%)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 13 selecting text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 14 editing text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number of undo's
set undolevels=2000

" normal backspace
set backspace=indent,eol,start



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 15 tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 16 folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 17 diff mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 18 mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" timeout when mapping
set timeout

" msecs for timeout
set timeoutlen=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 19 reading and writing files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" enable modelines
set modeline

" keep backup after overwriting file
set backup

" where to keep backups
set backupdir=/Users/msq/.vim/backup,/tmp


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 20 the swap file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 21 command line editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" keep n last commands
set history=100

" suffixes with lower priority
set suffixes=.bak,~,.h,.swp,.aux,.log,.out,.toc

" ignore those files when searching
set wildignore=*.o,*.pdf,*.class,*.pyc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 22 executing external commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 23 running make and jumping to errors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 24 language specific
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 25 multi-byte characters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" default to utf-8
set encoding=utf-8

" default terminal encoding
set termencoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 26 various
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
