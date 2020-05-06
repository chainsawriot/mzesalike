### stole from xaringanExtra

.gen_js <- function(element) {
    sprintf("
(function() {
let tries = 0
function addFooter() {
  if (typeof slideshow === 'undefined') {
    ++tries < 10 ? setTimeout(addFooter, 100) : null
    return
  } else {
  	document.querySelectorAll('.remark-slide-content:not(.title-slide):not(.inverse):not(.hide-footer)')
    	.forEach(el => el.innerHTML += '%s')
  }
}
document.addEventListener('DOMContentLoaded', addFooter)
})()
", element)
}

#' @export
use_footer <- function(params) {
    if (params$twitter == "") {
        ## Do nothing
        return(invisble(NULL))
    }
    content <- paste0(fontawesome::fa("twitter", fill = "steelblue"), "@", params$twitter)
    js_content <- .gen_js(paste0("<div class = my-footer><span>", content, "</span></div>"))
    tmpdir <- tempfile("footer")
    js <- file.path(tmpdir, "footer.js")
    dir.create(tmpdir)
    cat(js_content, file = js)
    htmltools::tagList(
                   htmltools::htmlDependency(
                                  name = "footer",
                                  version = utils::packageVersion("mzesalike"),
                                  src = tmpdir,
                                  script = "footer.js"
                              )
               )   
}
