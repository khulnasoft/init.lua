local target = arg[1]
if not target then
    print("Usage: nvim -l generate-vim-dap-skill.lua <target_file>")
    os.exit(1)
end

local f = io.open(target, "w")
if not f then
    print("Could not open " .. target)
    os.exit(1)
end

f:write([[---
name: vim.dap
description: Debug Adapter Protocol (DAP) integration
---

# Neovim DAP Skills

This document covers the debugging capabilities in Neovim using `nvim-dap` and `nvim-dap-ui`.

---

## Core DAP Keybindings

Mapped for efficient debugging flow:
- `<F8>`: Continue / Start debugging.
- `<F10>`: Step Over.
- `<F11>`: Step Into.
- `<F12>`: Step Out.
- `<leader>b`: Toggle Breakpoint.
- `<leader>B`: Set Conditional Breakpoint (prompts for condition).

---

## DAP UI (`rcarriga/nvim-dap-ui`)

Custom layouts are configured to provide dedicated views for different debugging aspects.

### Keybindings
- `<leader>dr`: Toggle REPL.
- `<leader>ds`: Toggle Stacks.
- `<leader>dw`: Toggle Watches.
- `<leader>db`: Toggle Breakpoints.
- `<leader>dS`: Toggle Scopes.
- `<leader>dc`: Toggle Console.

---

## DAP API Reference (`vim.dap`)

```lua
local dap = require('dap')

dap.continue()
dap.step_over()
dap.step_into()
dap.step_out()
dap.toggle_breakpoint()
dap.set_breakpoint(condition, hit_condition, log_message)
dap.repl.open()
```

---

## Mason Integration

The `mason-nvim-dap.nvim` plugin is used to manage debug adapters.
- **Ensure Installed**: `delve` (Go debugger).
- **Custom Config**: Delve is configured with support for command-line arguments.
]])
f:close()
