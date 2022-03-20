set t_Co=256
filetype plugin indent on
syntax on
set number
set nocompatible
filetype off
set backspace=indent,eol,start
set noshowmode
set laststatus=2
set ruler
set wildmenu
set langmenu=en
set cmdheight=1
set foldcolumn=1
set encoding=utf8
set ffs=unix,dos,mac
set wrap
set nu
set relativenumber
set exrc
set secure
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

call plug#begin("~/.vim/plugged")
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'itchyny/lightline.vim'
	Plug 'w0rp/ale'
	Plug 'Yggdroot/indentLine'
	Plug 'lilydjwg/colorizer'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-markdown'
	Plug 'editorconfig/editorconfig-vim'
	Plug 'godlygeek/tabular'
	Plug 'haya14busa/is.vim'
	Plug 'preservim/nerdcommenter'
	Plug 'preservim/nerdtree'
	Plug 'morhetz/gruvbox'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'machakann/vim-highlightedyank'
call plug#end()

if !exists('g:gruvbox_contrast_light')
  let g:gruvbox_contrast_light='hard'
endif

colorscheme gruvbox
set background=dark
if (g:colors_name == 'gruvbox')
  if (&background == 'dark')
    hi Visual cterm=NONE ctermfg=NONE ctermbg=237 guibg=#3a3a3a
  else
    hi Visual cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
    hi CursorLine cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
    hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=228 guibg=#f2e5bc
  endif
endif

hi SpellBad cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellLocal cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellRare cterm=underline ctermfg=203 guifg=#ff5f5f
hi SpellCap cterm=underline ctermfg=203 guifg=#ff5f5f

function! s:statusline_expr()
  let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
  let ro  = "%{&readonly ? '[RO] ' : ''}"
  let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
  let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
  let sep = ' %= '
  let pos = ' %-12(%l : %c%V%) '
  let pct = ' %P'

  return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
endfunction

let g:lightline = {
      \ 'colorscheme': 'selenized_dark',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified', 'lineinfo'] ],
      \   'right': [ ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END


