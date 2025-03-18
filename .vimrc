let mapleader = " "
inoremap jk <Esc>
set relativenumber
set ignorecase
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set splitright
"set termguicolors
set path+=**    " Search all subdirectories  
set wildmenu    " Enable tab completion  
set noshowmode


" Define color schemes for different sections
highlight Icon      ctermfg=green  ctermbg=black  guifg=#98C379  guibg=#282C34
highlight NormalC   ctermfg=white   ctermbg=blue  guifg=#61AFEF  guibg=#282C34
highlight InsertC   ctermfg=black    ctermbg=green  guifg=#E06C75  guibg=#282C34
highlight VisualC   ctermfg=white ctermbg=magenta  guifg=#E5C07B  guibg=#282C34
highlight Filename  ctermfg=white  ctermbg=black  guifg=#FFFFFF  guibg=#282C34
highlight ReadOnly  ctermfg=magenta ctermbg=black guifg=#C678DD  guibg=#282C34
highlight Fileformat ctermfg=cyan   ctermbg=black  guifg=#56B6C2  guibg=#282C34
highlight Position  ctermfg=white   ctermbg=blue  guifg=#B2B2B2  guibg=#282C34


" STATUSLINE
set laststatus=2
" set noshowmode

" STATUSLINE MODE
let g:currentmode = {
  \ 'n' : 'NORMAL ',
  \ 'v' : 'VISUAL ',
  \ 'V' : 'V-LINE ',
  \ "\'" : 'V-BLOCK',
  \ 'i' : 'INSERT ',
  \ 'R' : 'R ',
  \ 'Rv' : 'V-REPLACE ',
  \ 'c' : 'COMMAND ',
  \ }

" STATUSLINE
set statusline=
set statusline+=%#Icon#
set statusline+=%#NormalC#%{(mode()=='n')?'\ NORMAL\ ':''}
set statusline+=%#InsertC#%{(mode()=='i')?'\ INSERT\ ':''}
set statusline+=%#VisualC#%{(mode()=='v')?'\ VISUAL\ ':''}
set statusline+=%#Filename#
set statusline+=\ %f
set statusline+=%#ReadOnly#
set statusline+=\ %r
set statusline+=%m
set statusline+=%=
set statusline+=%#Fileformat#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ [%{&fileformat}\]
set statusline+=\ [%l/%L]
"set statusline+=%{(mode()=='n')?'   ':''}
"set statusline+=%{(mode()=='i')?'   ':''}
"set statusline+=%{(mode()=='v')?'   ':''}


"Enable Explore with <C-e>
noremap R s<span_style="color:#ff0000"><Esc>pa</span><Esc>F_r 

noremap <leader>o :find 

"Enable Explore with <C-e>
nnoremap <C-e> :Lexplore<CR>
nnoremap <leader>e :Lexplore %:p:h<CR>
nnoremap <leader>s :w<CR>
"nnoremap <leader>t :vsplit | terminal<CR>
"Open Terminal to the right
nnoremap ö :wa \| vertical botright term ++kill=term<CR>

"tabs
nnoremap <leader>n :tabnew<CR>
nnoremap L :tabnext<CR>
nnoremap H :tabnext<CR>
nnoremap <leader> :q<CR>

"split
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>

" Hide banner in netrw
let g:netrw_banner = 0


" hide dotfiles on load
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" Show files in a vertical split
let g:netrw_browse_split = 4

let g:netrw_localcopydircmd = 'cp -r'

" Keep cursor on the same file when refreshing
let g:netrw_keepdir = 0

function! AddNetrwBookmarkSorted()
  let l:bookmarks = readfile(expand("~/.vim/.netrwbookmarks"))
  let l:new_entry = expand("%:p")
  if index(l:bookmarks, l:new_entry) == -1
    call add(l:bookmarks, l:new_entry)
    call writefile(sort(l:bookmarks), expand("~/.vim/.netrwbookmarks"))
  endif
endfunction
"command! NetrwBookmarkSorted call AddNetrwBookmarkSorted()

"https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/

function! NetrwMapping()
  " create a file
  nmap <buffer> n %
  nmap <buffer> j j:pwd<CR>
  nmap <buffer> k k:pwd<CR>
  "go back 
  nmap <buffer> h -^:pwd<CR>
  "open folder 
  nmap <buffer> l <CR>:pwd<CR>

  "show / hide hidden files
  nmap <buffer> zh gh
  nmap <buffer> S :wa \| vertical botright term ++kill=term<CR>

  "mark file
  nmap <buffer> <leader> mf
  nmap <buffer> <leader>n :tabnew<CR>:Ex<CR>
  "nmap <buffer> <leader> :<C-U>call <SNR>24_NetrwMarkFile(1,<SNR>24_NetrwGetWord())<CR>
  nmap <buffer> P <C-w>z
  nmap <buffer> r R
  nmap <buffer> q :q<CR>
  nmap <buffer> N d

  nmap <buffer> ma mb
  nmap <buffer> *1 1gb
  nmap <buffer> *2 2gb
  nmap <buffer> *3 3gb
  nmap <buffer> *4 4gb

  nmap <buffer> dd D
  nmap <buffer> <Leader>dd :Lexplore<CR>
endfunction


augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END


