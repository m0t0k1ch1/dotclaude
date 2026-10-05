.PHONY: setup
setup: deps

.PHONY: deps
deps:
	pnpm install --frozen-lockfile

.PHONY: link
link:
	mkdir -p ~/.claude/rules
	ln -sf $(CURDIR)/settings/local.json ~/.claude/settings.json
	ln -sf $(CURDIR)/rules/common.md ~/.claude/rules/common.md

.PHONY: commit
commit:
	pnpm czg
