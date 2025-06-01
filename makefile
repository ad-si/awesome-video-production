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
		--exclude animoto.com \
		--exclude lumen5.com \
		--exclude openai.com \
		--exclude pika.art \
		README.md
