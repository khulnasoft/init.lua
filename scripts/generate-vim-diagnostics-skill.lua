local target = arg[1]
if not target then
    print("Usage: nvim -l generate-vim-diagnostics-skill.lua <target_file>")
    os.exit(1)
end

local f = io.open(target, "w")
if not f then
    print("Could not open " .. target)
    os.exit(1)
end

f:write([[---
name: vim.diagnostics
description: Navigation and handling of editor diagnostics
---

# Vim Diagnostics Skills

This skill covers the handling of errors, warnings, and hints.

## Keybindings
- `<leader>vd`: Open diagnostic float.
- `[d`: Go to next diagnostic.
- `]d`: Go to previous diagnostic.

## Configuration
- Updated in real-time or on save.
- Floating window border: rounded.
]])
f:close()
