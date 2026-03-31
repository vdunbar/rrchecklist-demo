#' Create a new plain-Markdown checklist file
#'
#' Copies one of the two rrchecklist plain-Markdown (`.md`) templates into the
#' directory of your choice, ready to open and fill in. Unlike the R Markdown
#' and Quarto templates — which require rendering — the plain-Markdown template
#' can be completed in any text editor, Git interface, or Markdown-aware tool
#' (e.g., RStudio, VS Code, Obsidian, GitHub).
#'
#' @param type Character string specifying which checklist to create.
#'   One of `"rr"` (Reliable Research Practices, the default) or
#'   `"eval"` (Evaluating Primary Research).
#' @param path Directory in which the new file should be created.
#'   Defaults to the current working directory (`"."`).
#' @param filename Optional character string giving the output file name
#'   (including the `.md` extension). If `NULL` (the default), a sensible
#'   name is chosen automatically:
#'   * `"RR_checklist.md"` for `type = "rr"`
#'   * `"evaluating_primary_research_checklist.md"` for `type = "eval"`
#' @param open Logical. If `TRUE` (the default) and the session is running
#'   inside RStudio, the new file is opened in the editor immediately after
#'   creation.
#'
#' @return The (invisible) path to the newly created file.
#'
#' @examples
#' \dontrun{
#' # Create the RR checklist in the current working directory
#' new_md_checklist()
#'
#' # Create the evaluation checklist in a specific directory
#' new_md_checklist(type = "eval", path = "checklists/")
#'
#' # Specify a custom file name
#' new_md_checklist(type = "rr", filename = "my_project_checklist.md")
#' }
#'
#' @export
new_md_checklist <- function(type     = c("rr", "eval"),
                              path     = ".",
                              filename = NULL,
                              open     = TRUE) {

  type <- match.arg(type)

  # Locate the template bundled with the package
  template_name <- switch(type,
    rr   = "RR_checklist_template.md",
    eval = "evaluating_primary_research_template.md"
  )
  template_path <- system.file(
    "templates", template_name,
    package = "rrchecklist",
    mustWork = TRUE
  )

  # Resolve the destination file name
  if (is.null(filename)) {
    filename <- switch(type,
      rr   = "RR_checklist.md",
      eval = "evaluating_primary_research_checklist.md"
    )
  }
  if (!grepl("\\.md$", filename, ignore.case = TRUE)) {
    filename <- paste0(filename, ".md")
  }

  # Build the full destination path
  dest <- file.path(path, filename)

  # Guard against accidental overwrites
  if (file.exists(dest)) {
    stop(
      "File already exists: ", normalizePath(dest, mustWork = FALSE), "\n",
      "  Choose a different `filename` or `path`, or delete the existing file first.",
      call. = FALSE
    )
  }

  # Create the destination directory if needed
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
  }

  # Copy
  ok <- file.copy(template_path, dest)
  if (!ok) {
    stop("Failed to copy template to: ", dest, call. = FALSE)
  }

  message("Created: ", normalizePath(dest, mustWork = FALSE))

  # Open in RStudio editor if requested and available
  if (open && rstudio_available()) {
    rstudioapi::navigateToFile(dest)
  }

  invisible(dest)
}


# ---------------------------------------------------------------------------
# Internal helper: is RStudio available and interactive?
# ---------------------------------------------------------------------------
rstudio_available <- function() {
  interactive() &&
    requireNamespace("rstudioapi", quietly = TRUE) &&
    rstudioapi::isAvailable()
}
