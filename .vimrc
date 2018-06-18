set number
syntax on

set wrap
set wrapmargin=0
set textwidth=0
set linebreak

imap jk <Esc>

set tabstop=2
set shiftwidth=2
set expandtab
set splitright

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

"auto relaod vimrc when it changes
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"Plug
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'maksimr/vim-jsbeautify'
Plug 'terryma/vim-multiple-cursors'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
call plug#end()

"set background=light
set background=dark
let base16colorspace=256

"colorscheme solarized
"colorscheme base16-solarized-dark
colorscheme base16-solarized-light

"Airline
set laststatus=2
set showtabline=2
let g:airline_theme='base16'

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline#extensions#tabline#right_alt_sep=''

"CtrlP Setting
let g:ctrlp_show_hidden=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git\|node_modules\|log\|\.gradle\|bower_components\',
  \ 'file': '\.swp|\.dat|\.DS_Store|\.swo'
  \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_files=1000000000

"Nerd Tree
let NERDTreeShowHidden=1
let NERDTreeWinPos="left"
map <C-j> :NERDTreeToggle<CR>

"" ALE Settings

""" Lint Settings
let g:ale_sign_column_always=1
let g:ale_javascript_eslint_use_global=1
let g:ale_javascript_eslint_options='--cache'
let g:ale_javascript_eslint_executable='eslint_d'

""" Fix Settings
let g:ale_fix_on_save=1
let g:ale_fixers = {
\   'javascript': ['eslint', 'remove_trailing_lines'],
\ }

" Strip Whitespace on Save
autocmd BufWritePre * :call StripTrailingWhitespaces()
function! StripTrailingWhitespaces()
  let _s=@/
  let l = line('.')
  let c = col('.')
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
