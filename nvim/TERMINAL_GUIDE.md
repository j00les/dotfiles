# Terminal Management in Neovim

## Toggleterm - Multiple Terminal Modes

Your nvim config uses **toggleterm** for terminal management, similar to VSCode's integrated terminal.

### Quick Access

| Keybinding | Action |
|------------|--------|
| `Ctrl + \` | Toggle terminal (opens last used terminal) |
| `<Leader>h` | Open horizontal terminal (bottom split) |
| `<Leader>v` | Open vertical terminal (right split) |
| `<Leader>f` | Open floating terminal (popup window) |
| `<Leader>g` | Open lazygit in floating terminal |

### Terminal Modes

1. **Horizontal Terminal** (`<Leader>h`)
   - Opens at the bottom of the screen
   - Takes up 15 lines of height
   - Good for running commands while viewing code

2. **Vertical Terminal** (`<Leader>v`)
   - Opens on the right side
   - Takes up 20% of screen width
   - Good for monitoring processes

3. **Floating Terminal** (`<Leader>f`)
   - Appears as a popup window
   - Centered on screen
   - Good for quick commands

### Working with Multiple Terminals

You can open multiple terminals simultaneously:

```vim
:ToggleTerm 1  " Open terminal 1
:ToggleTerm 2  " Open terminal 2
:ToggleTerm 3  " Open terminal 3
```

Switch between them:
```vim
:ToggleTerm 1  " Switch to terminal 1
```

### Terminal Shortcuts

While in terminal mode:
- `Ctrl+\` - Toggle back to normal mode
- `Ctrl+w h/j/k/l` - Navigate between splits
- Type `exit` - Close the current terminal

### Lazygit Integration

Press `<Leader>g` to open lazygit in a floating terminal for visual git management.

## Adding More Terminal Instances

You can create persistent terminal instances in `nvim/lua/plugins/toggleterm.lua`:

```lua
-- Example: Add a Python REPL terminal
local Terminal = require('toggleterm.terminal').Terminal
local python_repl = Terminal:new({
    cmd = "python",
    hidden = true,
    direction = "float",
    close_on_exit = false,
})

function _python_toggle()
    python_repl:toggle()
end

keyset("n", "<leader>py", "<cmd>lua _python_toggle()<CR>", {noremap = true, silent = true})
```

## Tips

1. **Run builds in terminal**: Open a horizontal terminal and run your build commands
2. **Monitor logs**: Use vertical terminal to tail log files while coding
3. **Quick commands**: Use floating terminal for one-off commands
4. **Git workflow**: Use lazygit (`<Leader>g`) for staging, committing, and viewing diffs
