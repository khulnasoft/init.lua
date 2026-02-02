---
name: vim.format
description: Code formatting and linting integration
---

# Neovim Formatting Skills

This document covers code formatting using `conform.nvim`.

---

## Conform.nvim (`stevearc/conform.nvim`)

Lightweight yet powerful formatter plugin.

### Keybindings
- `<leader>f`: Format current buffer (configured in `remap.lua`).

### Configuration
- **Lua**: Uses `stylua`.
- **Global Config**: Managed via `formatters_by_ft`.

### API Reference
```lua
require("conform").format({
  bufnr = 0,
  async = false,
  lsp_fallback = true,
})
```

---

## Static Analysis (Luacheck)

Your project includes a `.luacheckrc` and is configured for clean Lua development.

- Run check: `luacheck .`
- Global variables like `vim`, `ColorMyPencils`, and `R` are whitelisted.
