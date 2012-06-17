set nocompatible
set nu
set numberwidth=6
set smartindent 
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set wildmenu
set gdefault
set encoding=utf-8 nobomb
let mapleader=","
set eol
set hlsearch
set incsearch
set ignorecase
set smartcase
set noerrorbells
set nostartofline
set ruler
set shortmess=atI
set showmode
set title
set showcmd
set scrolloff=5
set sidescrolloff=10
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Hide search highlighting
map <Leader>h :set invhls <CR>

" Automatic commands
if has("autocmd")
    " Enable file type detection
    filetype on
    " Treat .json files as .js
    autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
endif


"http://vim.wikia.com/wiki/VimTip102

function! CleverTab()
  if pumvisible()
    return "\<C-N>"
  endif
  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
  elseif exists('&omnifunc') && &omnifunc != ''
    return "\<C-X>\<C-O>"
  else
    return "\<C-N>"
  endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
