# VSCode-like Features in Your Neovim Config

## Overview
Your nvim setup now includes many VSCode-inspired features for a modern IDE experience.

## Core Features

### 1. File Explorer (`nvim-tree`)
- **Toggle**: `Ctrl+n` (check your config)
- Tree-based file browser with icons
- Create, delete, rename files
- Git status indicators

### 2. Fuzzy Finder (`telescope`)
- **Find files**: `<Leader>ff`
- **Live grep**: `<Leader>fg`
- **Buffers**: `<Leader>fb`
- **Help tags**: `<Leader>fh`
- Fast fuzzy search across your project

### 3. LSP (Language Server Protocol)
- **Go to definition**: `gd`
- **Go to declaration**: `gD`
- **Find references**: `gr`
- **Go to implementation**: `gi`
- **Hover documentation**: `K`
- **Rename symbol**: `<Leader>rn`
- **Code actions**: `<Leader>ca`
- **Format code**: `<Leader>f`
- **Diagnostics**: `[d` / `]d` (previous/next)

### 4. Autocompletion (`nvim-cmp`)
- **Trigger**: `Ctrl+Space`
- **Navigate**: `Tab` / `Shift+Tab`
- **Confirm**: `Enter`
- Sources: LSP, snippets, buffer, path

### 5. Status Line (`lualine`)
- Shows: mode, branch, diff, diagnostics, file info
- Bottom status bar with all relevant info

### 6. Buffer/Tab Line (`bufferline`)
- **Next buffer**: `Ctrl+Tab`
- **Previous buffer**: `Ctrl+Shift+Tab`
- **Pick buffer**: `<Leader>bp`
- **Close buffer**: `<Leader>bc`
- Visual tabs at the top showing open buffers

### 7. Terminal (`toggleterm`)
- **Toggle**: `Ctrl+\`
- **Horizontal**: `<Leader>h`
- **Vertical**: `<Leader>v`
- **Floating**: `<Leader>f`
- **Lazygit**: `<Leader>g`
- See TERMINAL_GUIDE.md for details

### 8. Git Integration
- **gitsigns**: Shows git changes in sign column
- **git-blame**: Shows blame info
- **diffview**: View diffs and file history
- **fugitive**: Git commands in vim
- **lazygit**: Full-featured git UI

### 9. Search & Replace (`spectre`)
- **Open**: `Ctrl+Shift+F`
- **Search word**: `<Leader>sw`
- **Search in file**: `<Leader>sp`
- Project-wide search and replace panel

### 10. Problem Panel (`trouble`)
- Shows diagnostics, references, quickfix
- Organized view of all issues

## Additional Features

### Multi-cursor (`vim-visual-multi`)
- Multiple cursors like VSCode
- Select multiple occurrences and edit simultaneously

### Auto-pairs (`nvim-autopairs`)
- Automatically close brackets, quotes, etc.

### Comments (`Comment.nvim`)
- **Toggle line**: `gcc`
- **Toggle block**: `gbc`
- Context-aware commenting

### Smooth Scrolling (`neoscroll`)
- Animated smooth scrolling

### Which-key
- Shows available keybindings as you type
- Helpful for discovering shortcuts

### Symbols Outline (`symbols-outline`)
- Code structure sidebar
- Shows functions, classes, variables

### Color Highlighter (`nvim-colorizer`)
- Shows color preview for hex codes
- Inline color visualization

### TODO Comments (`todo-comments`)
- Highlights TODO, FIXME, NOTE, etc.
- Search todos across project

### Treesitter
- Better syntax highlighting
- Code understanding and navigation

## Installation

After pulling these changes, run:
```vim
:PackerSync
```

This will install all the new plugins. Restart nvim after installation.

## Language Servers

The following language servers are auto-installed via Mason:
- TypeScript/JavaScript (ts_ls, eslint)
- HTML, CSS
- Python (pyright)
- Lua (lua_ls)
- Vue (volar)
- JSON

Add more servers in `nvim/lua/plugins/lsp.lua`

## Customization

All plugin configs are in `nvim/lua/plugins/`
- Edit keybindings in individual plugin files
- Customize colors in `nvim/lua/config/color.lua`
- General settings in `nvim/lua/config/set.lua`
