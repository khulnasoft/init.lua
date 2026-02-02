local target = arg[1]
if not target then
    print("Usage: nvim -l generate-vim-lsp-skill.lua <target_file>")
    os.exit(1)
end

local f = io.open(target, "w")
if not f then
    print("Could not open " .. target)
    os.exit(1)
end

f:write([[---
name: vim.lsp
description: Language Server Protocol (LSP) integration
---

# Vim LSP Skills

This skill covers the LSP configuration and IDE-like features.

## LSP Keybindings
- `gd`: Go to definition.
- `K`: Hover information.
- `<leader>vws`: Workspace symbol search.
- `<leader>vca`: Code actions.
- `<leader>vrr`: References.
- `<leader>vrn`: Rename symbol.
- `<C-h>`: Signature help.

## Servers Managed
- lua_ls
- rust_analyzer
- gopls
- zls
]])
f:close()
