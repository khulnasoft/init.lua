local target = arg[1]
if not target then
    print("Usage: nvim -l generate-vim-testing-skill.lua <target_file>")
    os.exit(1)
end

local f = io.open(target, "w")
if not f then
    print("Could not open " .. target)
    os.exit(1)
end

f:write([[---
name: vim.testing
description: Integrated testing with Neotest
---

# Neovim Testing Skills

This document covers the testing capabilities in Neovim using `neotest`.

---

## Neotest Keybindings

Your configuration provides powerful shortcuts for running and inspecting tests:
- `<leader>tr`: Run nearest test.
- `<leader>ts`: Run test suite.
- `<leader>ta`: Run all tests (cwd).
- `<leader>td`: Debug nearest test (integrates with DAP).
- `<leader>tv`: Toggle summary UI.
- `<leader>to`: Open test output window.

---

## Supported Adapters

- **neotest-golang**: Specialized support for Go testing (configured with DAP integration).

---

## Neotest API Reference

```lua
local neotest = require("neotest")

-- Run tests
neotest.run.run()                    -- Nearest
neotest.run.run(vim.fn.expand("%"))  -- Current file
neotest.run.run({strategy = "dap"})  -- Run with debugger

-- UI & Output
neotest.summary.toggle()
neotest.output.open({ enter = true })
neotest.output_panel.toggle()
```
]])
f:close()
