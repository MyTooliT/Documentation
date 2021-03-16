all: init bookdown-epub bookdown-html bookdown-pdf cleanup

# Move pictures into repository root
init:
	Rscript -e "dir.create('Pictures')"
	Rscript -e "file.copy('Protocol/Pictures/', '.', recursive=T)"
	Rscript -e "file.copy('Diagrams/Pictures/', '.', recursive=T)"

# Remove pictures from repository root
cleanup:
	rm -rf Pictures

epub: init bookdown-epub cleanup

html: init bookdown-html cleanup

pdf: init bookdown-pdf cleanup

# Generate EPUB document
bookdown-epub:
	Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::epub_book')"

# Generate (GitBook) HTML document
bookdown-html:
	Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::gitbook')"
	Rscript -e "file.rename('Bookdown/Documentation.html', 'Bookdown/index.html')"

# Generate PDF
bookdown-pdf:
	Rscript -e "bookdown::render_book('ReadMe.md', 'bookdown::pdf_book')"

clean: cleanup
	Rscript -e "unlink('Bookdown', recursive = TRUE)"
