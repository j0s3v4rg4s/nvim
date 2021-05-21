set title                     " Muestra el nombre del archivo en la ventana de la terminal
set number                    " Muestra los números de las líneas
set mouse=a                   " Permite la integración del mouse (seleccionar texto, mover el cursor)
set nowrap                    " No dividir la línea si es muy larga
set cursorline                " Resalta la línea actual
set colorcolumn=120           " Muestra la columna límite a 120 caracteres
set hidden                    " Permitir cambiar de buffers sin tener que guardarlos
set ruler                     " Mostrar la linea y la posición del cursor
set ignorecase                " Ignorar mayúsculas al hacer una búsqueda
set smartcase                 " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set spelllang=en,es           " Corregir palabras usando diccionarios en inglés y español
set numberwidth=5             " set the line number width
set clipboard=unnamed         " Configura en clipboard
syntax enable                 " Refleja color sintaxis
set encoding=utf-8
set showmatch                 " Muestra la llave que abre y cierra
set relativenumber            " Muestra los numeros relativos a la lina del cursos
set laststatus=2              " Barra de comandos siempre visible
set background=dark           " Tipo de tema   

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab                 " Insertar espacios en lugar de <Tab>s

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'morhetz/gruvbox' " tema gruvbox
  Plug 'easymotion/vim-easymotion'
  Plug 'preservim/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim' 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Configuración gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

" Configuración de coc
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
let g:coc_filetype_map = {
  \ '': 'html',
  \ 'javascriptreact.javascript.javascript-react.javascript_react': 'javascriptreact',
  \ 'typescriptreact.javascript.typescript.javascriptreact.javascript-react.javascript_react': 'typescriptreact'
  \ }

" IDE configuración
let mapleader=" "

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

nmap <Leader><Leader>s <Plug>(easymotion-s2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
nnoremap <leader>s :w<CR>     " Guardar con <líder> + s

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + h
nnoremap <leader>h :bprevious<CR>

" C rrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

nmap <Leader><Leader>nt :NERDTree<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>wq :wq<CR>
