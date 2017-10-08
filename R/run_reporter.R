#' Run the main reporting pipeline
#'
#' @param input Absolute path of input directory (results of up-stream analysis).
#' @param output Output file name (In HTML format).
#' @param theme Journal palette applied to all plots supplied by package [ggsci](../../ggsci/doc/ggsci.html).
#' @param cdf.percent Percentage of values to display when calculating coding potential.
#' @param max.lncrna.len Maximum length of lncRNAs to display when calculating distribution (percentage).
#' @param min.expressed.sample Minimal percentage of expressed samples (percentage).
#'
#' @return None
#' @export
#' 
#' @details The function call a R markdown script internally by `rmarkdown::render`. 
#' There're also default paramter values in the script -- sometimes if the user try run it manually in *RStudio*,
#' *knitr* will bring him/her a graphical interface to choose/fill the value of paramters. 
#' Also you can use statement like `rmarkdown::render('./reporter.Rmd', params = 'ask')` to call the interface in browser.
#' 
#' @examples
#' run_reporter(input = system.file(paste0("extdata", .Platform$file.sep, "demo_results"),
#'              package = "LncPipeReporter"),
#'              output = 'reporter.html', theme = 'npg', cdf.percent = 10,
#'              max.lncrna.len = 10000, min.expressed.sample = 50)
#' 
run_reporter <- function(input = system.file(paste0("extdata", .Platform$file.sep, "demo_results"),
                                             package = "LncPipeReporter"),
                         output = 'reporter.html',
                         theme = 'npg',
                         cdf.percent = 10,
                         max.lncrna.len = 10000,
                         min.expressed.sample = 50) {
  rmarkdown::render(system.file(paste0('rmd', .Platform$file.sep, 'reporter.Rmd'), package = 'LncPipeReporter'),
                    params = list(input = input,
                                  output = output,
                                  theme = theme,
                                  cdf.percent = cdf.percent,
                                  max.lncrna.len = max.lncrna.len,
                                  min.expressed.sample = min.expressed.sample))
}
