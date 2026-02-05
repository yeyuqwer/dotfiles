set ttimeout
set ttimeoutlen=10
set timeoutlen=300

syntax on
set number

" --------------------------------------------------
if has('macunix')
  augroup YankToMacClipboard
    autocmd!
    autocmd TextYankPost * call system('pbcopy', @")
  augroup END
endif

if &term =~# 'xterm\|kitty\|screen\|tmux'
  " normal mode -> block cursor
  let &t_EI = "\<Esc>[2 q"
  " insert mode -> bar cursor
  let &t_SI = "\<Esc>[6 q"
  " replace mode -> underline cursor
  let &t_SR = "\<Esc>[4 q"
endif

" =========================
" Fast movement (normal / visual)
" =========================

" J / K 快速上下移动
nnoremap J 5j
nnoremap K 5k
xnoremap J 5j
xnoremap K 5k

" H / L 跳到行首 / 行尾（忽略空白）
nnoremap H ^
nnoremap L g_
xnoremap H ^
xnoremap L g_

" =========================
" macOS-style cursor movement (insert mode)
" =========================

inoremap <C-f> <Right>   " forward char
inoremap <C-b> <Left>    " backward char
inoremap <C-p> <Up>      " previous line
inoremap <C-n> <Down>    " next line

" =========================
" macOS-style cursor movement (command-line mode)
" =========================

cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
