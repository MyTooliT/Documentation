all: epub html pdf

init:
	# Move pictures into repository root
	cp -r Protocol/Pictures Pictures

cleanup:
	# Remove pictures from repository root
	rm -rf Pictures

epub: init bookdown-epub cleanup

html: init bookdown-html cleanup

pdf: init bookdown-pdf cleanup

bookdown-epub:
	# Generate EPUB document
	Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::epub_book')"

bookdown-html:
	# Generate (GitBook) HTML document
	Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::gitbook')"
	# Rename main HTML file for GitHub pages
	Rscript -e "file.rename('Bookdown/Documentation.html', 'Bookdown/index.html')"

bookdown-pdf:
	# Generate PDF
	Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::pdf_book')"

clean: cleanup
	rm -rf Bookdown
