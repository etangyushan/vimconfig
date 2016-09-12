set nu
set tabstop=4
set softtabstop=4
filetype indent on
set cindent
set autoindent
au InsertLeave *.* write
set autoread
set autowrite

set nocompatible
nmap <C-K> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
set shiftwidth=2

set completeopt=menu

set tags+=~/.vim/tags/tags

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"set the auto complete menu color
highlight Pmenu ctermbg=13 guibg=LightGray
highlight PmenuSel  cterm=bold ctermfg=9 ctermbg=4

let g:doxygenToolkit_authorName="tangyushan"
let g:doxygenToolkit_briefTag_funcName="yes"
map <F3>a :DoxAuthor
map <F3>f :Dox
map <F3>b :DoxBlock
map <F3>c O/** */<Left><Left>

filetype plugin on
