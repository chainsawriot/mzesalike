all: rin demo

.FORCE:

rin: .FORCE
	Rscript -e "devtools::document()"
	Rscript -e "devtools::install(quick = TRUE, upgrade = 'never')"
demo: rin
	rm -rf docs
	mkdir docs
	Rscript -e "rmarkdown::draft('docs/index.rmd', template = 'mzesalike', package = 'mzesalike', edit = FALSE)"
	Rscript -e "rmarkdown::render('docs/index.rmd')"
