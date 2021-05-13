# Derived from the binding functions from the Bookdown package
# https://github.com/rstudio/bookdown/blob/master/R/skeleton.R

site_skeleton <- function(path) {
  
  path <- normalise_path(path)
  
  # ensure directory exists
  dir.create(path, recursive = TRUE, showWarnings = FALSE)
  
  # copy 'resources' folder to path
  resources <- system.file(
    "rstudio", "templates", "project", "resources",
    package = package_name,
    mustWork = TRUE
  )
  
  files <- list.files(
    resources,
    recursive = TRUE,
    include.dirs = FALSE
  )
  
  source <- file.path(resources, files)
  target <- file.path(path, files)
  lapply(unique(dirname(target)), create_directory)
  file.copy(source, target)
  
  # copy 'template' folder to path
  resources <- system.file(
    'rmarkdown', 'templates', 'data', 'skeleton',
    package = package_name,
    mustWork = TRUE
  )
  
  files <- list.files(
    path = resources,
    recursive = TRUE,
    include.dirs = FALSE
  )
  
  files <- files[files != "skeleton.Rmd"]
  
  source <- file.path(resources, files)
  target <- file.path(path, files)
  lapply(unique(dirname(target)), create_directory)
  file.copy(source, target)
  
  invisible(NULL)
  
}
