\name{rrchecklist-package}
\alias{rrchecklist-package}
\alias{rrchecklist}
\docType{package}
\title{
Reliable Research Checklists
}
\description{
Provides two R Markdown templates for reliable research practices: evaluating primary research and documenting reliable research practices. Templates support both PDF and HTML output formats.
}
\details{
The rrchecklist package includes two comprehensive checklists as R Markdown templates:

\strong{1. Evaluating Primary Research} (\code{\link{evaluating-primary-research-checklist}})

A checklist for critically evaluating published research covering study design, reporting transparency, interpretation, and warning signs of problematic practices. Useful for peer review, literature reviews, and teaching.

\strong{2. Reliable Research Practices} (\code{\link{reliable-research-checklist}})

A comprehensive checklist for conducting research following best practices. Covers all stages from planning through dissemination. Complete throughout your project and submit with manuscripts to demonstrate research transparency.

\strong{Output Formats:}

All templates support:
\itemize{
  \item HTML - Interactive documents with floating table of contents
  \item PDF - Professional documents for submission or archiving
}

\strong{Getting Started:}

In RStudio: File > New File > R Markdown... > From Template > Select desired checklist

Programmatically:
\preformatted{
rmarkdown::draft("filename.Rmd",
                 template = "rr_checklist",  # or other template name
                 package = "rrchecklist")
}
}
\author{
Jason Pither <pitherj@gmail.com>

Mathew Vis-Dunbar

Maintainer: Jason Pither <pitherj@gmail.com>
}
\references{
Pither, J. and Vis-Dunbar, M. (2026). Concise guidelines for producing reliable, reproducible research. CC BY-NC-SA 4.0.
}
\keyword{package}
\seealso{
\code{\link{evaluating-primary-research-checklist}}, \code{\link{reliable-research-checklist}}
}
\examples{
\dontrun{
# Create a reliable research practices checklist
rmarkdown::draft("my_project_checklist.Rmd",
                 template = "reliable-research-checklist",
                 package = "rrchecklist")

# View template documentation
?`reliable-research-checklist`
?`evaluating-primary-research-checklist`
}
}
