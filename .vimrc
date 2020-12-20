set encoding=utf-8
scriptencoding utf-8

if filereadable(expand('~/.vim/dein.setup.vim'))
  source ~/.vim/dein.setup.vim
endif

if filereadable(expand('~/.vim/nerd_tree.setup.vim'))
  source ~/.vim/nerd_tree.setup.vim
endif

if filereadable(expand('~/.vim/vim_fugitive.setup.vim'))
  source ~/.vim/vim_fugitive.setup.vim
endif

if has('mouse')
  set mouse=a
  if has('mouse_sgr')
    set ttymouse=sgr
  elseif v:version > 703 || v:version is 703 && has('patch632')
    set ttymouse=sgr
  else
    set ttymouse=xterm2
  endif
endif

syntax enable
filetype plugin indent on

" Basic Setting {{{
set bs=indent,eol,start     " allow backspacing over everything in insert mode
"set autoindent              " always set autoindenting on
set smartindent
set nobackup
set noundofile
set noswapfile              " No Swap
set viminfo=%,'100,<500,h
set history=5000            " keep 5000 lines of command line history
set ruler                   " show the cursor position all the time
set number                  " show line number
set ambiwidth=double
set display=uhex            " 表示できない文字を16進数で表示
set scrolloff=5             " 常にカーソル位置から5行余裕を取る
set virtualedit=block       " 矩形選択でカーソル位置の制限を解除
set autoread                " 他でファイルが編集された時に自動で読み込む
set background=dark
set cursorline

" タブストップ設定
set tabstop=2
set shiftwidth=2
set softtabstop=0
set smarttab
set expandtab

" 検索設定
set incsearch
set hlsearch
set ignorecase
set smartcase
set wrapscan
set showmode
nmap <Esc><Esc> :nohlsearch<CR><Esc> " Escでハイライト解除


" tabline
set showtabline=2
set guioptions-=e
nnoremap <silent> <S-Right> :<C-U>tabnext<CR>
nnoremap <silent> <S-Left> :<C-U>tabprevious<CR>
nnoremap L :<C-U>tabnext<CR>
nnoremap H :<C-U>tabprevious<CR>
set tabline=%!MyTabLine()
function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif
    let s .= '%' . (i+1) . 'T'
    let s .= ' ' . (i+1) . (1==getwinvar(i+1,'&modified')?'[+]':'') . ' %{MyTabLabel(' . (i+1) . ')} '
  endfor
  let s .= '%#TabLineFill#%T'
  if tabpagenr('$') > 1
    let s .= '%=%#TabLine#%999Xclose'
  endif
  return s
endfunction

function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return bufname(buflist[winnr - 1])
endfunction


" タブ文字を強調
highlight tabs ctermbg=green guibg=green
match tabs /\t/
" 全角を強調 ただし、 vimrc と同じ文字コードの必要あり
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNewFile * match JpSpace /　/

set noshowmode
set wildmenu
set cmdheight=2
set wildmode=list:full

" クリップボード設定
set clipboard=unnamed

" バッファ切り替え
set hidden

" Tab表示
set list
set listchars=tab:>.,eol:↲,trail:_,extends:\

" タイトルを表示
set title

" 対応括弧を表示
set showmatch
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する

" 行頭・行末間移動を可能に
set whichwrap=b,s,h,l,<,>,[,]

" matchitスクリプトの読み込み
source $VIMRUNTIME/macros/matchit.vim


if stridx($TERM, "xterm-256color") >= 0
  let g:solarized_termcolors= 256
  let g:solarized_contrast = "high"
  let g:solarized_termtrans = 1
  colorscheme solarized
else
  colorscheme solarized
endif

" 256色モード
if stridx($TERM, "xterm-256color") >= 0
  set t_Co=256
else
  set t_Co=16
endif
