---
name: neovim-ai-agent
description: The AI Agent That Neovim Deserves
---

# Neovim AI Agent (Done Right)

This is a specialized project exploring the ideal AI workflow for advanced users.

## Concept: "No Skill Issues"
- Streamlined requests.
- Restricted operating scopes to prevent unintended side effects.
- Direct integration with Neovim's native APIs.

## Current Milestones
- **Working Scopes**: Implemented logic to check if a file is within allowed directories.
- **Implement Function**: Keybind `<leader>ai` reserved for precision code generation.
- **Virtual Text**: Active EOL indicators to provide non-intrusive agent status.

## Usage
- AI only touches files in: `src/`, `lua/`.
- For general requests, use external tools; this agent is for precision technical tasks.
