all:
	php -d short_open_tag=off -d display_errors=1 main.php && \
	ebook-convert build/book.opf learn-you-some-erlang.mobi
clean:
	rm -rf build learn-you-some-erlang.mobi
