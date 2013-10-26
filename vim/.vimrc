set number
set encoding=utf-8
set wildmode=list:longest,full
set wildmenu
set wildignore+=.git,.svn,.hg
set wildignore+=*.DS_Store
set showcmd
set title
set wrap
set linebreak
set autoindent
set cursorline
set showtabline=1
" old
filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set clipboard=unnamed
hi Comment ctermfg=darkgrey
set pastetoggle=<Leader>p
" new
set mousehide
if version >= 700
    set spell spelllang= 
    set nospell " По умолчанию проверка орфографии выключена
    menu Spell.off :setlocal spell spelllang= <cr>
    menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
    menu Spell.Russian :setlocal spell spelllang=ru <cr>
    menu Spell.English :setlocal spell spelllang=en <cr>
    menu Spell.-SpellControl- :
    menu Spell.Word\ Suggest<Tab>z= z=
    menu Spell.Previous\ Wrong\ Word<Tab>[s [s
    menu Spell.Next\ Wrong\ Word<Tab>]s ]s
endif

set incsearch
set hlsearch
set ignorecase
set smartcase
set gdefault
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>
inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O
nmap <Tab> gt
nmap <S-Tab> gT
"Color theme
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme herald
"Hotkeys
imap [ []<LEFT>
" Автозавершение слов по tab =)
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>
" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов "
set complete+=t
set completeopt-=preview
set completeopt+=longest
"TagList
let g:Tlist_Show_One_File = 1
