library(drake)
pkgconfig::set_config("drake::strings_in_dots" = "literals")

stopifnot(
  requireNamespace("here"),
  requireNamespace("purrr")
)

sourcefiles <- list.files(
  here::here("analysis", "R"),
  full.names = TRUE
)
purrr::walk(sourcefiles, source)

plan <- drake_plan(
  try_fst = try2fst(
    c(file_in("analysis/data-raw/1584.txt"),
      file_in("analysis/data-raw/1585.txt"),
      file_in("analysis/data-raw/1829.txt")),
    file_out("analysis/data-proc/try_full.fst")
  )
)
dconf <- drake_config(plan)
make(plan)
