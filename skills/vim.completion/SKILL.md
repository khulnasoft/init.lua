---
name: vim.completion
description: Autocompletion and Snippets usage
---

# Neovim Completion & Snippets Skills

This document covers the autocompletion engine (`nvim-cmp`) and snippet engine (`LuaSnip`).

---

## Autocompletion (`hrsh7th/nvim-cmp`)

The framework for autocompletion.

### Mapping (Insert Mode)
- `<C-p>`: Select previous item.
- `<C-n>`: Select next item.
- `<C-y>`: Confirm selection.
- `<C-Space>`: Explicitly trigger completion.

### Completion Sources
- `copilot`: AI-powered suggestions.
- `nvim_lsp`: Suggestions from the LSP.
- `luasnip`: Snippet expansions.
- `buffer`: Words from the current buffer.

---

## Snippets (`L3MON4D3/LuaSnip`)

Advanced snippet engine for fast code expansion.

### Keybindings (Insert/Select Mode)
- `<C-s>e`: Expand current snippet.
- `<C-s>;`: Jump to the next companion placeholder in a snippet.
- `<C-s>,`: Jump to the previous placeholder.
- `<C-E>`: Cycle through alternative choices in a snippet.

### Snippet Packs
- **Friendly Snippets**: A massive collection of ready-to-use snippets for most languages.

---

## API Reference (LuaSnip)

```lua
local ls = require("luasnip")

ls.expand()                     -- Expand snippet
ls.jump(1)                      -- Jump forward
ls.jump(-1)                     -- Jump backward
ls.choice_active()              -- Check if choice node is active
ls.change_choice(1)             -- Change choice
```
