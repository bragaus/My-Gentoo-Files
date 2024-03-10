" plugins usados no ~/.vim/pack/git-plugins/start
" ctrlp.vim
" emmet-vim
" indentLine
" nerdcommenter
" nerdtree
" vim-airline
" vim-devicons
" vim-startify
" vim-vue

colo delek

"source ~/.vim/coc.nvimrc

filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let NERDTreeShowHidden=1

let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_statusline_ontop = 0 
let g:airline#extensions#tabline#formatter = 'default'

" navegação entre os buffers
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>

" mapeando CC para comentario automatico
map cc <Plug>NERDCommenterInvert
" mapeando ctrl-k + i para ativar e desativar identlines
map <c-k>i :IndentLinesToggle<cr>
" mapeando ctrl-n para exibir e esconder nerdtree
map <C-n> :NERDTreeToggle<cr>

set encoding=utf-8
let g:indentLine_enabled = 0

" ativar sintaxe colorida
syntax on

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
" efetuar quebra de linha. Funciona bem para linguagem C
set smartindent

" ativar numeração de linha
set number
set relativenumber

" destaca a linha em que o cursor está posicionado
" ótimo para quem não enxerga muito bem
set cursorline

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus

" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=4 softtabstop=4 expandtab shiftwidth=4

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o 
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za
