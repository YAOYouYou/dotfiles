nnoremap ; :

nnoremap H ^
nnoremap L $

inoremap <C-h> <left>
" inoremap <C-j> <down>
" inoremap <C-k> <up>
inoremap <C-l> <right>

nnoremap Q :q!<cr>

nnoremap < <<
nnoremap > >>
vnoremap < <gv
vnoremap > >gv

nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

nnoremap <leader>1 :tabn1<cr>
nnoremap <leader>2 :tabn2<cr>
nnoremap <leader>3 :tabn3<cr>
nnoremap <leader>4 :tabn4<cr>
nnoremap <leader>5 :tabn5<cr>
nnoremap <leader>6 :tabn6<cr>
nnoremap <leader>7 :tabn7<cr>
nnoremap <leader>8 :tabn8<cr>
nnoremap <leader>9 :tabn9<cr>
nnoremap <leader>10 :tabn10<cr>
nnoremap th :tabn<cr>
nnoremap tl :tabp<cr>
