set number
set relativenumber
syntax on

set wrap
set wrapmargin=0
set textwidth=0
set linebreak

imap jk <Esc>
map <C-p> :Files<Enter>

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
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-ruby/vim-ruby'
call plug#end()

"Terminal Theme
let base16colorspace=256
if has("termguicolors")
    set termguicolors
endif
colorscheme base16-default-dark
"colorscheme solarized
"colorscheme base16-solarized-dark
"colorscheme base16-solarized-light

"Airline
set laststatus=2
set showtabline=2
let g:airline_theme='base16'

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline#extensions#tabline#right_alt_sep=''

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

let g:ale_pattern_options_enabled = 1

let g:ale_pattern_options = {
\ 'pay-server/.*\.rb$': { 'ale_ruby_rubocop_executable': 'scripts/bin/rubocop-daemon/rubocop' },
\}

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

""" Tags for ruby
let g:gutentags_ctags_executable_ruby = 'ripper-tags'
let g:gutentags_ctags_extra_args = ['--ignore-unsupported-options', '--recursive']
