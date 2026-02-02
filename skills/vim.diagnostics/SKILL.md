---
name: vim.diagnostics
description: Navigation and handling of editor diagnostics
---

# Neovim Diagnostics API Reference

This document covers Neovim's diagnostic subsystem (`vim.diagnostic`).

---

## vim.diagnostic

Functions for managing and navigating diagnostics.

```lua
function vim.diagnostic.get(bufnr, opts) end         -- Get diagnostics
function vim.diagnostic.get_next(opts) end           -- Get next diagnostic
function vim.diagnostic.get_prev(opts) end           -- Get previous diagnostic
function vim.diagnostic.goto_next(opts) end          -- Go to next diagnostic
function vim.diagnostic.goto_prev(opts) end          -- Go to previous diagnostic
function vim.diagnostic.open_float(opts) end         -- Show diagnostics in a floating window
function vim.diagnostic.set(namespace, bufnr, diag) end -- Set diagnostics
function vim.diagnostic.config(opts) end            -- Global diagnostic configuration
function vim.diagnostic.show(ns, bufnr, diag, opts) end -- Display diagnostics
function vim.diagnostic.hide(ns, bufnr) end          -- Hide diagnostics
```

---

## Configuration (khulnasoft)

Your current configuration:
- `float`: Minimal style, rounded borders, always shows source.
- `update_in_insert`: Currently set to false (commented out).

### Keybindings
- `<leader>vd`: `vim.diagnostic.open_float()`
- `[d`: `vim.diagnostic.goto_next()`
- `]d`: `vim.diagnostic.goto_prev()`
