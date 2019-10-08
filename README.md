<p align="center">
  <img src="/ascii.png", width="600", height="400", title="vim.reaper"/>
</p>

<p align="center">💀 A Hackable, Fully Featured, Rice Friendly Neovim Configuration 💀</p>

# Features

* 🎨 Colorscheme generated with [pywal](https://github.com/dylanaraps/pywal)
* 💭 Intellisense, Completion, and Linting with [coc.nvim](https://github.com/neoclide/coc.nvim)
* 🏷️ Tag management with [vista.vim](https://github.com/liuchengxu/vista.vim)
* 🔀 Git integration with [vim-fugitive](https://github.com/tpope/vim-fugitive) and [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* ✈️ Informative statusline and tabline with [vim-airline](https://github.com/vim-airline/vim-airline)
* ✂️ Code snippets powered by [UltiSnips](https://github.com/sirver/UltiSnips)
* 💡 Intelligent suggestions with [vim-tabnine](https://github.com/zxqfl/tabnine-vim)
* 📁 Simple file browsing with [NERDTree](https://github.com/scrooloose/nerdtree)
* 📜 Dynamic homepage with [vim-startify](https://github.com/mhinz/vim-startify)
* 🔎 Distraction free writing with [Goyo](https://github.com/junegunn/goyo.vim)
* 🧰 Assorted editing enhancements with [vim-surround](https://github.com/tpope/vim-surround), [auto-pairs](https://github.com/jiangmiao/auto-pairs), [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors), [indentLine](https://github.com/Yggdroot/indentLine), [tabular](https://github.com/godlygeek/tabular), [comfortable-motion.vim](https://github.com/comfortable-motion.vim), [vim-devicons](https://github.com/ryanoasis/vim-devicons)

# Installation

Currently you can simply copy `init.vim` into your neovim config directory. However I am planning to break up the main config file into more modular, manageable parts. Stay tuned.

# Usage

## Basic Usage

* To quickly switch from `INSERT` to `NORMAL` mode, press `jk` or `kj` quickly.
* In `NORMAL` mode, press `TAB` or `Shift+TAB` to cycle through open buffers.
* `<Leader>` has been mapped to `SPACE`. In general, functions related to certain plugins can be started with the first letter of the plugin. For example: `<Leader>c` would be the root of commands relating to `CoC`.
* Use `<Leader>bk` to kill the current buffer.
* In `NORMAL` mode, use `Ctrl+h/j/k/l/` to switch between open windows.
* Comfy smooth scroll with `Ctrl+u` plus `Ctrl+d`.

## Startify
To open Neovim to the startify buffer, simply launch `nvim` without any arguments. Your recently edited files will be displayed, as well as recently edited files from the current directory.
<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/startify.png?" width="640" height="360" title="startify">
</p>

## Completion
In the middle of a word, you can press `Tab` to open the Coc floating completion menu and cycle through options. This menu should be populated with sippets from `UltiSnips`, smart complete from `TabNine`, and any other completion suggestions. Press `Shift+Tab` to go up in the menu, and `Enter` to select an option.
<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/completion.png" width="640" height="360" title="coc">
</p>
Note: Windows are set to the background color because the other colors look gross IMO. Ideally we could have a border on the floating windows but that is not implemented in CoC yet.

## NERDTree
In any buffer, press `F7` to open the NERDTree file browser. Optionally disable the `nerdtree-highlights` plugin if you don't want syntax highlighting in NT. 
<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/nerdtree.png" width="640" height="360" title="nerdtree">
</p>

## Airline
### Tabline
The tabline will display the currently open buffers, and wheather they have been modified.
<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/tabline.png" width="940" height="13" title="tabline">
</p>

### Statusbar
The status bar displays the current editing mode, git hunks, git branch with branch status, the modified status of the buffer,  the filename and filetype, the character encoding method, progress through file, and warnings/errors found by linter.
<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/statusbar.png" width="940" height="23" title="statusbar">
</p>

## Vista
I am still ironing out the kinks in my vista config (specifically with C files), but it should work pretty well for most filetypes. Press `F8` to toggle the Vista window.
<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/vista.png" width="640" height="360" title="vista">
</p>

For quick location of tags, you can activate the `Vista finder` fuzzyfinder by pressing `<Leader>vf`

<p align="center">
  <img src="https://gideonwolfe.com/img/neovim/reaper/vistafzf.png" width="640" height="360" title="vistafzf">
</p>

To navigate the fzf menu, you can type the name of the tag or use `Ctrl+j` or `Ctrl+k`

# Required tools
These must be installed to make use of all the awesome features

* fzf to enable fuzzy finding
* eslint [npm package](https://www.npmjs.com/package/eslint) for coc-eslint (only for JavaScript)
* ccls package for C/C++ languace servers
* OracleJDK or OpenJDK, version 8+ (only for Java)
* Git
* coc.nvim [npm package](https://www.npmjs.com/package/coc.nvim)
* [pywal](https://github.com/dylanaraps/pywal) for colorscheme
