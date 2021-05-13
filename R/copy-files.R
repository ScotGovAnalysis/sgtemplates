#' @export
import_template_files <- function(target_path = NULL) {
  
  # If target path is not defined, use the current working directory
  if (is.null(target_path)) {
    target_path <- getwd()
  }
  
  # Normalise the target path
  target_path <- normalise_path(target_path)
  
  # If directory indicated in path does not exist, return an error
  # This should prevent the user from accidentally copying the template files to the wrong directory
  if (!dir.exists(target_path)) {
    stop(paste0("Directory \"", target_path, "\" does not exist."))
  }
  
  # Copy template files from source path to target path
  source_path <- system.file(
    "rmarkdown", "templates", "data", "skeleton",
    package = package_name,
    mustWork = TRUE
  )
  
  source_files <- list.files(
    path = source_path,
    recursive = TRUE,
    include.dirs = FALSE
  )
  
  source_files <- source_files[source_files != "skeleton.Rmd"]
  
  source <- file.path(source_path, source_files)
  target <- file.path(target_path, source_files)
  lapply(unique(dirname(target)), create_directory)
  
  file.copy(
    from = source,
    to = target,
    overwrite = TRUE
  )
  
  # Print confirmation messages to console
  print_version()
  cat(
    "Copied template files to",
    paste0("\"", target_path, "\"."),
    fill = TRUE
  )
  
  invisible(NULL)
  
}
