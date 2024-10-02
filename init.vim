
""" Principio del fichero .vimrc, sólo necesitamos que contenga:
set nocompatible

""" Inicializamos Vundle (el filetype off es obligatorio
filetype off





set number
syntax on
set background=dark
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" Habilitar NERDTree
set runtimepath^=~/.vim/plugged/nerdtree


syntax on
set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab


" Enable syntax highlighting
syntax on

" Show line numbers
set number

" Enable auto-indentation
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab

" Enable line wrapping
set wrap

" Set up search options
set incsearch
set hlsearch

" Enable mouse support
set mouse=a

" Set color scheme (optional, you can choose another)
colorscheme desert

" Enable file type detection and plugin support
filetype plugin indent on

" Set up code folding
set foldmethod=syntax
set foldlevel=99

" Enable the status line
set laststatus=2

" Configure tags for Java development
set tags=./tags,tags;

" Add custom mappings (optional)
" You can add custom key mappings here if needed

" Add a command to compile Java code
command! -nargs=1 JCompile !javac <args>
" Add a command to run Java code
command! -nargs=1 JRun !java <args>
call plug#begin('~/.vim/plugged')
Plug 'ludovicchabant/vim-gutentags' " Ejemplo de plugin para resaltado (no específico para pseudocódigo)
Plug 'vim-scripts/pseudocode-vim' " Un ejemplo de plugin para pseudocódigo





" Activar la numeración de líneas
set number

" Resaltar la sintaxis
syntax on

" Activar la identación automática
filetype plugin indent on
set autoindent
set smartindent

" Establecer el tamaño del tabulador
set tabstop=4
set shiftwidth=4
set expandtab

" Colorear la sintaxis de PHP
autocmd FileType php setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4



call plug#begin('~/.vim/plugged')
Plug 'StanAngeloff/php.vim'
call plug#end()

" Configuración para vim-plug
call plug#begin('~/.local/share/nvim/site/plugged')

" Plugins
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Configuración adicional
filetype plugin indent on
syntax enable


" Configuración para vim-plug
call plug#begin('~/.local/share/nvim/site/plugged')

" Plugins para PHP
Plug 'stanangeloff/php.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Necesario para usar intelephense

" Plugins para Java
Plug 'artur-shaik/vim-javacomplete2'
Plug 'dense-analysis/ale' " Linting y autocompletado para Java

" Plugins para JavaScript
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Necesario para soporte en JavaScript
Plug 'dense-analysis/ale' " Linting y autocompletado para JavaScript

call plug#end()

" Configuración adicional
filetype plugin indent on
syntax enable

" Configuración para ale
let g:ale_linters = {
\   'php': ['phpcs', 'phpmd', 'phpstan'],
\   'java': ['javac'],
\   'javascript': ['eslint'],
\}

" Configuración para coc.nvim
let g:coc_global_extensions = [
\   'coc-java',
\   'coc-eslint',
\]



" Configuración para vim-plug
call plug#begin('~/.local/share/nvim/site/plugged')

" Otros plugins
Plug 'preservim/nerdtree'

call plug#end()

" Configuración adicional para NERDTree
" Mapea <leader>n para abrir y cerrar NERDTree
nnoremap <silent> <leader>n :NERDTreeToggle<CR>

let g:NERDTreeWinSize = 30


call plug#begin('~/.vim/plugged')

" Ejemplo: Soporte para JavaScript
Plug 'pangloss/vim-javascript'

" Autocompletado con Coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Configuración adicional para Coc.nvim
let g:coc_global_extensions = ['coc-tsserver', 'coc-json']

  root_dir = vim.fs.dirname(vim.fs.find({'.git', 'pom.xml', 'build.gradle'}, { upward = true })[1]),
  settings = {
    java = {
      eclipse = {
        downloadSources = true,
      },
      configuration = {
        updateBuildConfiguration = "interactive",
      },
      maven = {
        downloadSources = true,
      },
      implementationsCodeLens = {
        enabled = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
    }
  }
}



