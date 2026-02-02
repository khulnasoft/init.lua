local target = arg[1]
if not target then
    print("Usage: nvim -l generate-vim-treesitter-skill.lua <target_file>")
    os.exit(1)
end

local f = io.open(target, "w")
if not f then
    print("Could not open " .. target)
    os.exit(1)
end

f:write([[---
name: vim.treesitter
description: Treesitter based navigation and highlighting
---

# Vim Treesitter Skills

This skill covers the Treesitter configuration and advanced syntax-aware operations.

## Features
- Syntax highlighting for multiple languages.
- Incremental selection.
- Tree-aware indentation.

## Keybindings
- Use standard `[` and `]` navigation for movements (if configured in treesitter-textobjects).
]])
f:close()
