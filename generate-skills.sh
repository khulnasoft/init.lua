#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Generating skills/vim/SKILL.md..."
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-skill.lua" "$SCRIPT_DIR/skills/vim/SKILL.md"

echo "Generating skills/vim.treesitter/SKILL.md..."
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-treesitter-skill.lua" "$SCRIPT_DIR/skills/vim.treesitter/SKILL.md"

echo "Generating skills/vim.lsp/SKILL.md..."
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-lsp-skill.lua" "$SCRIPT_DIR/skills/vim.lsp/SKILL.md"

echo "Generating skills/vim.git/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.git"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-git-skill.lua" "$SCRIPT_DIR/skills/vim.git/SKILL.md"

echo "Generating skills/vim.diagnostics/SKILL.md..."
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-diagnostics-skill.lua" "$SCRIPT_DIR/skills/vim.diagnostics/SKILL.md"

echo "Generating skills/vim.dap/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.dap"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-dap-skill.lua" "$SCRIPT_DIR/skills/vim.dap/SKILL.md"

echo "Generating skills/vim.testing/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.testing"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-testing-skill.lua" "$SCRIPT_DIR/skills/vim.testing/SKILL.md"

echo "Generating skills/vim.navigation/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.navigation"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-nav-skill.lua" "$SCRIPT_DIR/skills/vim.navigation/SKILL.md"

echo "Generating skills/vim.format/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.format"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-format-skill.lua" "$SCRIPT_DIR/skills/vim.format/SKILL.md"

echo "Generating skills/vim.ui/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.ui"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-ui-skill.lua" "$SCRIPT_DIR/skills/vim.ui/SKILL.md"

echo "Generating skills/vim.completion/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.completion"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-completion-skill.lua" "$SCRIPT_DIR/skills/vim.completion/SKILL.md"

echo "Generating skills/vim.harpoon/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/vim.harpoon"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-vim-harpoon-skill.lua" "$SCRIPT_DIR/skills/vim.harpoon/SKILL.md"

echo "Generating skills/neovim-ai-agent/SKILL.md..."
mkdir -p "$SCRIPT_DIR/skills/neovim-ai-agent"
nvim --headless -l "$SCRIPT_DIR/scripts/generate-neovim-ai-agent-skill.lua" "$SCRIPT_DIR/skills/neovim-ai-agent/SKILL.md"

echo "Done!"
