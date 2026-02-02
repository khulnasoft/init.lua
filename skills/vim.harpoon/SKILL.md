---
name: vim.harpoon
description: Fast file switching and workflow management
---

# Neovim Harpoon Skills

This document covers the Harpoon configuration for rapid context switching.

---

## Core Keybindings

Your Harpoon is configured for maximum speed:
- `<leader>a`: Add current file to Harpoon list.
- `<leader>A`: Prepend current file to Harpoon list.
- `<C-e>`: Toggle Harpoon quick menu (UI).

---

## File Navigation

Jump to specific marked files instantly:
- `<C-h>`: Jump to file 1.
- `<C-t>`: Jump to file 2.
- `<C-n>`: Jump to file 3.
- `<C-s>`: Jump to file 4.

---

## List Management

Replace marks at specific slots:
- `<leader><C-h>`: Replace mark at slot 1.
- `<leader><C-t>`: Replace mark at slot 2.
- `<leader><C-n>`: Replace mark at slot 3.
- `<leader><C-s>`: Replace mark at slot 4.

---

## API Reference (Harpoon 2.0)

```lua
local harpoon = require("harpoon")

harpoon:list():add()
harpoon:list():select(index)
harpoon.ui:toggle_quick_menu(harpoon:list())
```
