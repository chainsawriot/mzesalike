all: rin demo

.FORCE:

rin: .FORCE
	Rscript -e "devtools::document()"
	Rscript -e "devtools::install(quick = TRUE, upgrade = 'never')"
demo: rin
	rm -rf demo
	mkdir demo
	Rscript -e "rmarkdown::draft('demo/index.rmd', template = 'mzesalike', package = 'mzesalike', edit = FALSE)"
	Rscript -e "rmarkdown::render('demo/index.rmd')"
