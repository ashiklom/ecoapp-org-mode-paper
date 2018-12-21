try2fst <- function(tryfiles, outfile) {
  depends("fst", "data.table", "purrr")
  stopifnot(all(file.exists(tryfiles)))

  try_dt <- purrr::map(tryfiles, data.table::fread) %>%
    data.table::rbindlist()
  
}
