all: opf
	ebook-convert build/book.opf learn-you-some-erlang.mobi
opf:
	php -d short_open_tag=off -d display_errors=1 main.php
pdf: opf
	ebook-convert build/book.opf learn-you-some-erlang.pdf
clean:
	rm -rf build learn-you-some-erlang.*
