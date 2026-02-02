.PHONY: help install lint skills commit push all

help:
	@echo "Available commands:"
	@echo "  make install  - Sync plugins using lazy.nvim (requires nvim open)"
	@echo "  make lint     - Run luacheck on the project"
	@echo "  make skills   - Regenerate all SKILL.md files"
	@echo "  make commit   - Run automated dev commit"
	@echo "  make all      - Run lint, skills, and commit"

install:
	@echo "Please open Neovim and run :Lazy sync"

lint:
	luacheck .

skills:
	./generate-skills.sh

commit:
	@git add .
	@git commit -m "🚀 dev: manual build/doc update $$(date +'%Y-%m-%d %H:%M:%S')"
	@git push || echo "Push failed, check your connection."

all: lint skills commit
