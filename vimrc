"NeoBundl Scripts-----------------------------
if has('vim_starting')
  if &compatible
      set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/pawelka/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/pawelka/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'flazz/vim-colorschemes'

" Personal Plugins
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'dhruvasagar/vim-table-mode'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nathanaelkane/vim-indent-guides'

" File explorer
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'

" File finder
NeoBundle 'ctrlpvim/ctrlp.vim'

" Autocomplete
NeoBundle 'Valloric/YouCompleteMe'

" Python
NeoBundle 'davidhalter/jedi-vim'

" HTML 
NeoBundle 'mattn/emmet-vim'

" Javascript 
NeoBundle 'jelera/vim-javascript-syntax' " TODO: Look into solarized for this. Vim can't handle the system intern dark mode well
NeoBundle 'ternjs/tern_for_vim' " TODO: Create mappings for it: https://github.com/ternjs/tern_for_vim
NeoBundle 'pangloss/vim-javascript'

" CSS TODO: Have not yet looked into those  
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'skammer/vim-css-color'
NeoBundle 'groenewege/vim-less'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

set number
" set cursorline
set wildmenu

:noremap <F4> :set hlsearch! hlsearch?<CR>

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Set the foreground and background colors for the highlighting of matching
" parenthesis
hi MatchParen cterm=none ctermbg=green ctermfg=black

" Vim Table Mode preferences
let g:table_mode_header_fillchar="="

" Vim Intent Guides Plugin
colorscheme default
let g:indent_guides_auto_colors = 0
hi IndentGuidesEven ctermbg=darkgrey
set ts=4 sw=4 et
