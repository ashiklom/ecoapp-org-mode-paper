#' Specify package dependencies
#'
#' @param ... Package dependencies. Can be character vector, multiple
#'   characters, or any combination thereof. 
#' @return (Invisibly) Vector of package names.
#' @author Alexey Shiklomanov
depends <- function(...) {
  dots <- list(...)
  pkgs <- unlist(dots, recursive = TRUE)
  for (p in pkgs) {
    stopifnot(requireNamespace(p))
  }
  invisible(pkgs)
}
