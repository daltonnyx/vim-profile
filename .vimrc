syntax enable
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'taglist.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'beyondwords/vim-twig'
Plug 'valloric/youcompleteme'
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'mgee/lightline-bufferline'
Plug 'isruslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive'
call plug#end()
""Set colorscheme
colorscheme Monokai

"Set Status line
 set laststatus=2
 let g:lightline = {
             \ 'colorscheme': 'powerline',
             \ 'active': {
             \ 'left': [ [ 'mode', 'paste'  ],
             \           [ 'fugitive', 'readonly', 'filename', 'modified'  ] ]
             \},
             \ 'component': {
             \ 'readonly': '%{&filetype=="help"?"":&readonly?"":""}',
             \ 'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}'
             \ },
             \ 'component_visible_condition': {
             \ 'readonly': '(&filetype!="help"&& &readonly)',
             \ 'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
             \ },
             \ 'separator': { 'left': '', 'right': ''  },
             \ 'subseparator': { 'left': '', 'right': ''  }
             \ }
 let g:lightline#bufferline#show_nummber = 1
 let g:lightline.tabline = {'left' : [['buffers']], 'right': [['close']]}
 let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
 let g:lightline.component_type = {'buffers': 'tabsel'}
 set noshowmode
 "Syntastic config
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 0
 let g:syntastic_check_on_wq = 0

 let g:syntastic_php_checkers = ['php']
 let g:syntastic_php_php_exec = 'php56'

 " Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1

 " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1

 " Align line-wise comment delimiters flush left instead of following code indentation
 let g:NERDDefaultAlign = 'left'

 " Set a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1

 " Add your own custom formats or override the defaults
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

 " Allow commenting and inverting empty lines (useful when commenting a region)
 let g:NERDCommentEmptyLines = 1

 " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1

 " Setting completion
 " let g:ycm_key_list_select_completion=[]
 " let g:ycm_key_list_previous_completion=[]
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab number autoindent
set showtabline=2
nmap <C-n> :NERDTreeToggle<CR>
nmap <F6> :SyntasticCheck<CR>
nmap <F2> :w!<CR>
nmap <F4> "+p<CR>
vmap <F4> "+y<CR>
nmap <F8> :TagbarToggle<CR>
 " For remote editing
 "nmap <C-F2> :Nwrite <CR>
 "nmap <C-m> :Explore <CR>
" Disable because confict with â
let g:AutoPairsShortcutBackInsert = '<C-b>'
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
