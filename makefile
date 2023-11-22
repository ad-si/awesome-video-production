readme.md: FORCE
	bun x markdown-toc \
		--bullets='-' \
		-i \
		$@

FORCE:
