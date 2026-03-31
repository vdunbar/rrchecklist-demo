\name{evaluating-primary-research-checklist}
\alias{evaluating-primary-research-checklist}
\title{Evaluating Primary Research Checklist Template}
\description{
An R Markdown template for systematically evaluating primary research publications. This checklist helps researchers, reviewers, and students critically assess the quality, transparency, and reliability of published research.
}
\details{
The template provides a comprehensive checklist organized into the following sections:

\strong{Study Rationale and Planning} - Evaluates whether the research clearly articulates its questions/hypotheses, methodology, and statistical approach.

\strong{Reporting and Transparency} - Assesses transparency in reporting methods, results, data availability, and adherence to open science practices.

\strong{Interpretation and Context} - Examines whether findings are appropriately interpreted, limitations discussed, and results contextualized within existing literature.

\strong{Community-Engaged Research Considerations} - Additional items for evaluating research conducted with community partners.

\strong{Warning Signs} - Red flags that may indicate problematic research practices such as predatory publishing, p-hacking, or overgeneralization.

\strong{Use Cases:}
\itemize{
  \item Peer review of manuscripts
  \item Literature reviews and systematic reviews
  \item Teaching research methods and critical appraisal
  \item Self-assessment before manuscript submission
}

The template can be rendered to PDF for formal documentation or HTML for interactive use.
}
\section{Output Formats}{
The template supports two output formats:
\describe{
  \item{HTML}{Interactive document with floating table of contents (default)}
  \item{PDF}{Professional document suitable for archiving or submission}
}
}
\examples{
\dontrun{
# Create a new document from this template in RStudio:
# File > New File > R Markdown... > From Template > "Evaluating Primary Research"

# Or programmatically:
rmarkdown::draft("my_evaluation.Rmd",
                 template = "evaluating-primary-research-checklist",
                 package = "rrchecklist")
}
}
\references{
Pither, J. and Vis-Dunbar, M. (2026). Concise guidelines for producing reliable, reproducible research. CC BY-NC-SA 4.0.
}
\seealso{
\code{\link{reliable-research-checklist}}
}
