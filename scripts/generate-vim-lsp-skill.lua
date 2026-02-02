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

# Neovim LSP API Reference

This document contains common API functions used when working with Neovim's LSP client.

---

## vim.lsp.buf

These functions are typically called from buffer-local keybindings to interact with the language server.

```lua
function vim.lsp.buf.definition() end           -- Jump to definition
function vim.lsp.buf.declaration() end          -- Jump to declaration
function vim.lsp.buf.type_definition() end      -- Jump to type definition
function vim.lsp.buf.implementation() end       -- Jump to implementation
function vim.lsp.buf.hover() end                -- Display hover information
function vim.lsp.buf.signature_help() end       -- Display signature information
function vim.lsp.buf.code_action() end          -- Select code action
function vim.lsp.buf.references() end           -- List all references
function vim.lsp.buf.rename(new_name) end       -- Rename symbol
function vim.lsp.buf.format(options) end        -- Format buffer
function vim.lsp.buf.workspace_symbol(query) end -- Find workspace symbol
```

---

## vim.lsp.util

Utility functions for LSP integration.

```lua
function vim.lsp.util.make_range_params() end
function vim.lsp.util.apply_text_edits(edits, bufnr, offset_encoding) end
function vim.lsp.util.jump_to_location(location, offset_encoding) end
```

---

## Internal Configuration (khulnasoft)

Your configuration uses `mason.nvim` and `mason-lspconfig.nvim` to manage servers.

### Managed Servers
- `lua_ls`: Lua development.
- `rust_analyzer`: Rust development.
- `gopls`: Go development.
- `zls`: Zig development.

### Global Keybindings
Mapped during `LspAttach`:
- `gd`: Definition
- `K`: Hover
- `<leader>vws`: Workspace Symbol
- `<leader>vd`: Open Diagnostic Float
- `<leader>vca`: Code Action
- `<leader>vrr`: References
- `<leader>vrn`: Rename
- `<C-h>`: Signature Help
]])
f:close()
