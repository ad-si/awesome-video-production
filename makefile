.PHONY: update-toc
update-toc: README.md
	bun x markdown-toc \
		--bullets='-' \
		-i \
		$<


.PHONY: test
test:
	lychee \
		--max-redirects 0 \
		--require-https \
		--exclude youtube.com \
		--exclude pika.art \
		--exclude openai.com \
		--exclude lumen5.com \
		--exclude animoto.com \
		README.md
