# mzesalike

Previously known as `mzes_alike`

A theme for [xaringan](https://cran.r-project.org/web/packages/xaringan/index.html) [[Demo](https://chainsawriot.github.io/mzesalike/)]

Not an official product.

## Comparison

Original (PowerPoint)             |  mzesalike (HTML5)
:-------------------------:|:-------------------------:
<img src = "man/figures/originalmzes.png" height = "300">  |  <img src = "man/figures/mzesalike.png" height = "300">

## Installation

```r
devtools::install_github("chainsawriot/mzesalike")
```

## Usage

If you are using RStudio, you can create a new `mzesalike` presentation by

1. *File* -> *R Markdown...*

<img src = "man/figures/rstudio1.png" width = "300" align = "center">

2. *From Template* -> *Slide Template for MZES*

<img src = "man/figures/rstudio2.png" width = "300" align = "center">

If you are not using RStudio (e.g. me), you can create a new presentation like so:

```r
## Create a new direction
dir.create('demo')

## Create a template
rmarkdown::draft('demo/index.rmd', template = 'mzesalike', package = 'mzesalike', edit = FALSE)
```

