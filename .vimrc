set t_Co=256
if !has('nvim')
	set term=builtin_ansi
	set term=xterm-256color
endif

filetype plugin indent on
syntax on
set number
set nocompatible              " be iMproved, required
filetype off                  " required
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

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
Plugin 'ycm-core/YouCompleteMe'
Plugin 'c.vim'
Plugin 'rakr/vim-one'
Plugin 'gruvbox-community/gruvbox'
Plugin 'lambdalisue/fern.vim'
Plugin 'lambdalisue/fern-mapping-mark-children.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'inkarkat/vim-ingo-library' | Plugin 'inkarkat/vim-SpellCheck'
Plugin 'machakann/vim-highlightedyank'
Plugin 'unblevable/quick-scope'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'haya14busa/is.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-unimpaired'
Plugin 'Konfekt/FastFold'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'SirVer/ultisnips' | Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'janko/vim-test'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'chr4/nginx.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'fatih/vim-go'
Plugin 'cespare/vim-toml', { 'branch': 'main' }
Plugin 'godlygeek/tabular' | Plugin 'tpope/vim-markdown'
Plugin 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plugin 'jvirtanen/vim-hcl'
Plugin 'lifepillar/pgsql.vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'stephpy/vim-yaml'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-rails'
Plugin 'vim-python/python-syntax'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wgwoods/vim-systemd-syntax'
Plugin 'towolf/vim-helm'
Plugin 'hashivim/vim-terraform'
Plugin 'dense-analysis/ale'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdcommenter'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



set exrc
set secure
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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

