.PHONY: watch

watch:
	@watchexec -w "$$(chezmoi source-path)" -- chezmoi apply --force
