# Agent Instructions for this Repository

This repository is a highly modularized and automated Neovim configuration.

## Project Structure
- `init.lua`: Main entry point, requires `khulnasoft`.
- `lua/khulnasoft/init.lua`: Core setup, autocmds, and requirements.
- `lua/khulnasoft/lazy_init.lua`: Plugin manager initialization.
- `lua/khulnasoft/lazy/`: Plugin specifications.
- `scripts/`: Lua scripts for generating documentation and skills.
- `skills/`: Automatically generated markdown documentation for Neovim features.

## Strict Rules for Agents
1. **Always run `./generate-skills.sh`** after making any changes to the configuration, keybindings, or plugin setup. This ensures the documentation in `skills/` stays synchronized.
2. **Maintain Quality**: Run `luacheck .` to ensure no new linting warnings are introduced.
3. **Automated Commits**: You can use the custom `<leader>gc` keybinding (or `require("khulnasoft.git_utils").dev_commit()`) for standard development commits.
4. **Modularity**: When adding new plugins, create a new file in `lua/khulnasoft/lazy/` instead of cluttering existing files.

## Documentation System
The project uses a custom Lua-based documentation generator. Each major feature has a corresponding generator in `scripts/generate-vim-*.lua`. If you add a significant new subsystem, create a new generator script and update `generate-skills.sh`.
