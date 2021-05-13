# Variables ---------------------------------------------------------------

package_name <- "sgtemplates"

# Functions ---------------------------------------------------------------

# Test for existence of directory; if directory does not exist, attempt to recursively create directories to path
create_directory <- function(path) {
  utils::file_test("-d", path) || dir.create(path, recursive = TRUE)
}

# Convert paths into the canonical form for the platform; on Windows this is "C:/Parent/Child"
# A simple wrapper for the normalizePath() function
normalise_path <- function(path) {
  normalizePath(path = path, winslash = "/", mustWork = FALSE)
}

# Print package version to console
print_version <- function() {
  
  date <- as.character(utils::packageDate(pkg = package_name))
  version <- as.character(utils::packageVersion(pkg = package_name))
  
  cat(
    "Scottish Government Rmd template package",
    paste0("\"", package_name, "\""),
    "--",
    "Version", version,
    paste0("(", date, ")."),
    fill = TRUE
  )
  
  invisible(NULL)
  
}
