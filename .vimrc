" Inicializar Plug
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'liuchengxu/vim-which-key'
Plug 'christianrickert/vim-firefly'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chxuan/vimplus-startify'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'

call plug#end()
let g:deoplete#enable_at_startup = 1
let g:gitgutter_enabled = 1

" Registro de teclas en which-key para el local leader
autocmd! User vim-which-key call which_key#register(',', 'g:which_key_map')
" Configuración general
set relativenumber
set showcmd
set showmatch
set tabpagemax=10
set showtabline=2
set laststatus=2
set timeoutlen=500
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_max_count = 3
let g:coc_disable_startup_warning = 1
" Configuración de colores y temas
colorscheme firefly
let g:dark_transp_bg = 0
if (has("termguicolors"))
  set termguicolors
endif

" Configuración de Airline
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Configuración de NERDTree
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_autoclose = 1

" Configuración de which-key
let mapleader = "\<Space>"
let g:maplocalleader = ','
let g:which_key_map = {}
let g:which_key_map['f'] = {
    \ 'name' : '+files' ,
  \ 'f' : [':tabnew |  :Files', 'New tab and file'],
  \ 'g' : [':GFiles', 'Git Files'],
  \ 'b' : [':Buffers', 'Buffer Files'],
  \ 'r' : [':Rg', 'Grep Files'],
  \ 'h': [':History', 'Search command history with fzf'],
  \ 'l': [':Lines', 'Search lines in files with fzf'],
  \ }

let g:which_key_map['t'] = {
    \ 'name' : '+tabs' ,
  \ 'n' : [':tabnew', 'New tab'],
  \ 't' : [':Buffers Tabs', ':tabs'],
  \ 'd' : [':tabnew | split', 'Split tab'],
  \ 'o' : [':tabnew #', 'Reopen last closed tab'],
  \ }

let g:which_key_map['m'] = {
  \ 'name': '+easymotion',
  \ 's': ['<Plug>(easymotion-s)', 'Search character'],
  \ 'f': ['<Plug>(easymotion-f)', 'Search character in direction'],
  \ }
let g:which_key_map['w'] = {
  \ 'name': '+windows',
  \ 'h': [':wincmd h', 'Move to left window'],
  \ 'j': [':wincmd j', 'Move to bottom window'],
  \ 'k': [':wincmd k', 'Move to top window'],
  \ 'l': [':wincmd l', 'Move to right window'],
  \ 's': [':split', 'Split window horizontally'],
  \ 'v': [':vsplit', 'Split window vertically'],
  \ 'c': [':close', 'Close current window'],
  \ 'o': [':only', 'Close all other windows'],
  \ 'm': [':resize +5', 'Increase window height'],
  \ 'n': [':resize -5', 'Decrease window height'], 
  \ 'd': [':resize +10', 'Increase window height'], 
  \ 'u': [':resize -10', 'Decrease window height'],
  \ }
let g:which_key_map['p'] = {
  \ 'name': '+plugins',
  \ 'i': [':PlugInstall', 'Install plugins'],
  \ 'u': [':PlugUpdate', 'Update plugins'],
  \ 'c': [':PlugClean', 'Clean unused plugins'],
  \ }
let g:which_key_map['g'] = {
  \ 'name': '+git',
  \ 's': [':Gstatus', 'Git status'],
  \ 'd': [':Gdiff', 'Git diff'],
  \ 'c': [':Gcommit', 'Git commit'],
  \ 'p': [':Gpush', 'Git push'],
  \ 'l': [':Gpull', 'Git pull'],
  \ }

" Mapeo de comandos de GitGutter
let g:which_key_map['h'] = {
  \ 'name': '+gitgutter',
  \ 'p': [':GitGutterPreviewHunk', 'Preview hunk'],
  \ 'n': [':GitGutterNextHunk', 'Next hunk'],
  \ 'P': [':GitGutterPrevHunk', 'Previous hunk'],
  \ }
let g:which_key_map['c'] = {
  \ 'name': '+coc.nvim',
  \ 'e': [':CocCommand explorer', 'Open Explorer'],
  \ 'r': [':CocCommand rename', 'Rename Symbol'],
  \ 'f': [':CocCommand prettier.formatFile', 'Format Document with Prettier'],
  \ 'a': [':CocCommand eslint.executeAutofix', 'Fix ESLint Issues'],
  \ 'd': [':CocDiagnostics', 'Diagnostics'],
  \ 's': [':CocCommand workspace.showOutput', 'Show Output'],
  \ }

let g:which_key_map[' '] = [':Files', 'search files']
" Atajos de teclado
nnoremap <silent> <Leader><Space> :WhichKey '<Space>'<CR>
nnoremap <silent> <space>e :NERDTreeToggle<CR>
"nnoremap <silent> <Leader>s :PlugStatus<CR>
nnoremap <S-H> :tabprevious<CR>
nnoremap <S-L> :tabnext<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
nnoremap <S-n> :tabnew<CR>:file<CR>
nnoremap <S-d> :tabclose<CR>
nmap s <Plug>(easymotion-s)
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>
" Usar <Tab> para navegar por las opciones de autocompletado
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
" Mapear Enter para confirmar selección en pumvisible
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Mapear Ctrl+S para guardar el archivo
noremap <silent> <C-s> :w<CR>

" Configuración de vimplus-startify
let g:startify_custom_header = [
  \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣤⡼⠀⢀⡀⣀⢱⡄⡀⠀⠀⠀⢲⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⡿⠛⠋⠁⣤⣿⣿⣿⣧⣷⠀⠀⠘⠉⠛⢻⣷⣿⣽⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀',
  \ '⠀⠀⠀⠀⠀⠀⢀⣴⣞⣽⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠠⣿⣿⡟⢻⣿⣿⣇⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣟⢦⡀⠀⠀⠀⠀⠀⠀',
  \ '⠀⠀⠀⠀⠀⣠⣿⡾⣿⣿⣿⣿⣿⠿⣻⣿⣿⡀⠀⠀⠀⢻⣿⣷⡀⠻⣧⣿⠆⠀⠀⠀⠀⣿⣿⣿⡻⣿⣿⣿⣿⣿⠿⣽⣦⡀⠀⠀⠀⠀',
  \ '⠀⠀⠀⠀⣼⠟⣩⣾⣿⣿⣿⢟⣵⣾⣿⣿⣿⣧⠀⠀⠀⠈⠿⣿⣿⣷⣈⠁⠀⠀⠀⠀⣰⣿⣿⣿⣿⣮⣟⢯⣿⣿⣷⣬⡻⣷⡄⠀⠀⠀',
  \ '⠀⠀⢀⡜⣡⣾⣿⢿⣿⣿⣿⣿⣿⢟⣵⣿⣿⣿⣷⣄⠀⣰⣿⣿⣿⣿⣿⣷⣄⠀⢀⣼⣿⣿⣿⣷⡹⣿⣿⣿⣿⣿⣿⢿⣿⣮⡳⡄⠀⠀',
  \ '⠀⢠⢟⣿⡿⠋⣠⣾⢿⣿⣿⠟⢃⣾⢟⣿⢿⣿⣿⣿⣾⡿⠟⠻⣿⣻⣿⣏⠻⣿⣾⣿⣿⣿⣿⡛⣿⡌⠻⣿⣿⡿⣿⣦⡙⢿⣿⡝⣆⠀',
  \ '⠀⢯⣿⠏⣠⠞⠋⠀⣠⡿⠋⢀⣿⠁⢸⡏⣿⠿⣿⣿⠃⢠⣴⣾⣿⣿⣿⡟⠀⠘⢹⣿⠟⣿⣾⣷⠈⣿⡄⠘⢿⣦⠀⠈⠻⣆⠙⣿⣜⠆',
  \ '⢀⣿⠃⡴⠃⢀⡠⠞⠋⠀⠀⠼⠋⠀⠸⡇⠻⠀⠈⠃⠀⣧⢋⣼⣿⣿⣿⣷⣆⠀⠈⠁⠀⠟⠁⡟⠀⠈⠻⠀⠀⠉⠳⢦⡀⠈⢣⠈⢿⡄',
  \ '⣸⠇⢠⣷⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⠿⠿⠋⠀⢻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢾⣆⠈⣷',
  \ '⡟⠀⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⣤⡀⢸⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⢹',
  \ '⡇⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠈⣿⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⢸',
  \ '⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠶⣶⡟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼',
  \ '⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁',
  \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡁⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
  \ '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣼⣀⣠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
\ ]


let g:startify_align_center = 1
let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Recientes'] },
    \ { 'type': 'dir',       'header': ['   Directorio '. getcwd()] },
    \ { 'type': 'sessions',  'header': ['   Sesiones'] },
    \ { 'type': 'bookmarks', 'header': ['   Marcadores'] },
    \ ]
" Configuración para coc.nvim
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ ]

" Registro de teclas en which-key
call which_key#register('<Space>', "g:which_key_map")
