let mapleader=','

call plug#begin('~/.local/share/nvim/plugged')
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'kana/vim-textobj-user'
" Plug 'nelstrom/vim-textobj-rubyblock'
" Plug 'othree/html5.vim'
" Plug 'pangloss/vim-javascript'
" Plug 'thoughtbot/vim-rspec'
" Plug 'tpope/vim-rails'
" Plug 'tpope/vim-repeat'
" Plug 'vim-ruby/vim-ruby'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'
Plug 'jbmorgado/vim-pine-script'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhartington/nvim-typescript'
Plug 'mxw/vim-jsx'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/yajs.vim'
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/gitignore'
call plug#end()

set background=dark
colorscheme one

call one#highlight('vertsplit', '2c323c', '2c323c', 'none')

set clipboard=unnamedplus
set cmdheight=2
set completeopt-=preview
set hidden
set list
set nowrap
set number
set termguicolors

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme = 'one'
let g:deoplete#enable_at_startup = 1
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:nvim_typescript#signature_complete = 1
let g:nvim_typescript#type_info_on_hold = 1
let g:webdevicons_enable_airline_statusline = 1
let g:jsx_ext_required = 0

nnoremap <silent> <Leader>t :Files<CR>
nnoremap <silent> <Leader>a :Buffers<CR>
nnoremap <silent> <Leader>A :Windows<CR>
nnoremap <silent> <Leader>f :Files <C-R>=expand('%:h')<CR><CR>
nnoremap <silent> <Leader>; :BLines<CR>
nnoremap <silent> <Leader>o :BTags<CR>
nnoremap <silent> <Leader>O :Tags<CR>
nnoremap <silent> <Leader>? :History<CR>
nnoremap <silent> <Leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <Leader>. :AgIn

nnoremap <silent> K :call SearchWordWithAg()<CR>
vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap <silent> <leader>ft :Filetypes<CR>

imap <C-x><C-f> <plug>(fzf-complete-file-ag)
imap <C-x><C-l> <plug>(fzf-complete-line)

function! SearchWordWithAg()
  execute 'Ag' expand('<cword>')
endfunction

function! SearchVisualSelectionWithAg() range
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  let old_clipboard = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"') call setreg('"', old_reg, old_regtype)
  let &clipboard = old_clipboard
  execute 'Ag' selection
endfunction

function! SearchWithAgInDirectory(...)
  call fzf#vim#ag(join(a:000[1:], ' '), extend({'dir': a:1}, g:fzf#vim#default_layout))
endfunction
command! -nargs=+ -complete=dir AgIn call SearchWithAgInDirectory(<f-args>)

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <c-n> :bnext<cr>
nnoremap <c-p> :bprevious<cr>

" Format JSON
map <leader>j :%!python -m json.tool<cr>

map <leader>v :!open %%<cr><cr>

" Replay recording with space
nnoremap <Space> @q

" Switch between buffers
nnoremap <leader><leader> <c-^>

" Hit return to remove search highlighting
nnoremap <cr> :nohlsearch<cr>
