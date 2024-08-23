# Started-Draco-Vim
![94shots_so](https://github.com/user-attachments/assets/238523dc-323f-4f7d-8cc5-d8cd28d92a6c)
![Version](https://img.shields.io/badge/version-1.0.0-blue)
![Vim Version](https://img.shields.io/badge/vim-%3E%3D8.2-green)
![Contributors](https://img.shields.io/badge/contributors-vicenteroa-orange)
![Issues](https://img.shields.io/github/issues/vicenteroa/Started-Draco-Vim)
![License](https://img.shields.io/github/license/vicenteroa/Started-Draco-Vim)
# Vim Installation and Configuration Guide

## Plug Installation

### On Windows

1. **Install Vim**:
   - Make sure you have Vim installed. You can download it from [vim.org](https://www.vim.org/download.php) or install it via [Chocolatey](https://chocolatey.org/) using the command `choco install vim`.

2. **Install Plug**:
   - Open a terminal (cmd or PowerShell).
   - Run the following command to download Plug and place it in the appropriate directory:
     ```sh
     curl -fLo %USERPROFILE%\vimfiles\autoload\plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     ```

3. **Configure Plug in Vim**:
   - Create or edit the `_vimrc` file in `%USERPROFILE%`.
   - Add the following content to initialize Plug:
     ```vim
     call plug#begin('~/.vim/plugged')
     " List of plugins here
     call plug#end()
     ```

### On Linux

1. **Install Vim**:
   - Make sure you have Vim installed. You can install it using your package manager, for example:
     ```sh
     sudo apt-get install vim
     ```

2. **Install Plug**:
   - Open a terminal.
   - Run the following command to download Plug:
     ```sh
     curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
     ```

3. **Configure Plug in Vim**:
   - Create or edit the `.vimrc` file in your home directory.
   - Add the following content to initialize Plug:
     ```vim
     call plug#begin('~/.vim/plugged')
     " List of plugins here
     call plug#end()
     ```

## Custom Configuration

This `.vimrc` file configures various aspects of your Vim environment. Here's a description of each section:

### Plugins

Plugins are managed by Plug and are initialized with:
```vim
call plug#begin('~/.vim/plugged')
" List of plugins here
call plug#end()
```


## General Settings

```vim
set relativenumber
set showcmd
set showmatch
set tabpagemax=10
set showtabline=2
set laststatus=2
set timeoutlen=500
```
- relativenumber: Shows relative line numbers.
- showcmd: Displays the current command in the status line.
- showmatch: Highlights matching parentheses or brackets.
- tabpagemax: Maximum number of tab pages.
- showtabline: Always show the tab line.
- laststatus: Always show the status line.
- timeoutlen: Timeout for key sequences.
## Plugin Settings
- NERDTree: File explorer.
- Airline: Status line with custom themes.
- which-key: Displays available key mappings.
- coc.nvim: Autocompletion and LSP support.
## Key Mappings
- <Leader><Space>: Opens the which-key menu.
- <Space>e: Toggles NERDTree.
- <S-H>/<S-L>: Navigates between tabs.
- <C-s>: Saves the current file.

## coc.nvim Configuration
```vim
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ ]
```
Installs extensions for language support and development tools.

# Best Workflow
Start Vim:

- Open Vim and use :PlugInstall to install all the listed plugins.
- Open Files Using Startify:

- Use Startify to quickly open recent files, directories, and sessions if available.
Create New Buffers:
Use Shift + n to create a new buffer.
Open Files:

- Use Space Space to open any file you need at the moment.
Explore and Use Plugins:
Use :NERDTreeToggle to explore files.
Use :Files to quickly search for files.
Use :Gstatus to manage Git status.
Customize Your Environment:

Adjust key mappings and settings according to your workflow.
Keep Updated:

Update your plugins with :PlugUpdate.
Follow these steps to set up and customize your Vim environment. Enjoy an efficient and productive workflow.
