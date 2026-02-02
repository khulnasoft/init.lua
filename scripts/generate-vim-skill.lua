local target = arg[1]
if not target then
    print("Usage: nvim -l generate-vim-skill.lua <target_file>")
    os.exit(1)
end

local f = io.open(target, "w")
if not f then
    print("Could not open " .. target)
    os.exit(1)
end

f:write([[---
name: vim
description: Core Neovim navigation and editing skills
---

# Vim Core Skills

This skill covers the basic Neovim configuration including settings and global remaps.

## Core Settings
- Relativenumber is enabled.
- Tabstop/Shiftwidth: 4 spaces.
- Undofile enabled in ~/.vim/undodir.
- Leader key: " " (space).

## Global Keybindings
- `<leader>pv`: Open project view (Ex).
- `J`/`K` in visual mode: Move lines up/down.
- `<C-d>`/`<C-u>`: Scroll and center (zz).
- `<leader>y`: Yank to system clipboard.
- `<leader>gc`: Automated dev commit.
]])
f:close()
