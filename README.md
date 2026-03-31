# rrchecklist

An R package providing two checklists for reliable research practices in both R Markdown and Quarto formats. These checklists help researchers evaluate existing research and document their own research practices.  

These checklists are designed to complement the following guidelines document:  

Pither, J. and Vis-Dunbar, M. (2026). Concise guidelines for producing reliable, reproducible research. CC BY-NC-SA 4.0.

You are welcome to clone this GitHub repo in order to tailor the checklists to your own needs. If you do, please cite both the guidelines document and this R package:

Pither, J., Vis-Dunbar, M. 2026. rrchecklist: an R package providing markdown templates for checklists to support research assessment and the production of reliable research. 

Based on:

Pither, J. and Vis-Dunbar, M. (2026). Concise guidelines for producing reliable, reproducible research. CC BY-NC-SA 4.0.


## Overview

The package includes two distinct checklist templates:

### 1. Evaluating Primary Research

A checklist for critically evaluating published research. Use when:
- Conducting peer review
- Performing literature reviews
- Teaching research methods
- Self-assessing manuscripts before submission

Covers: study rationale and planning, reporting and transparency, interpretation and context, and warning signs of problematic research practices.

### 2. Reliable Research Practices

A checklist for conducting your own research. Use when:
- Planning a new research project
- Documenting research practices for manuscripts
- Demonstrating compliance with funding requirements
- Training in research methods

Covers: planning, conducting, reporting/interpreting, and enhancing transparency following best practices for reproducibility.

## Installation

### From source

```r
# Install from local directory
install.packages("path/to/rrchecklist", repos = NULL, type = "source")

# Or using devtools
devtools::install_local("path/to/rrchecklist")

# IMPORTANT: Restart R/RStudio after installation for templates to appear
```

### From GitHub

```r
# Install from GitHub
# install.packages("devtools")  # if not already installed
devtools::install_github("pitherj/rrchecklist")

# IMPORTANT: Restart R/RStudio after installation for templates to appear
```

## Usage

After installation (and restarting R/RStudio), create a new checklist document in RStudio:

1. `File > New File > R Markdown...`
2. Click `From Template`
3. Select one of:
   - **Evaluating Primary Research**
   - **Reliable Research Practices**
4. Fill in the YAML header with your information
5. Check off completed items using `[x]` instead of `[ ]`
6. Add notes and documentation links beneath relevant sections
7. Knit to HTML or PDF using the "Knit" button

### Output Formats

Each template supports two output formats:

- **HTML** (default): Interactive document with floating table of contents; can subsequently be printed for records if desired
- **PDF**: PDF document that can be used for submission or archiving

To change the output format, select from the dropdown menu next to the "Knit" button in RStudio, or modify the YAML header:

```yaml
output:
  html_document:  # For HTML
    toc: true
    toc_float: true
  pdf_document:   # For PDF
    toc: false
```

### Using Quarto Templates

The package also provides Quarto versions of all templates. Quarto is a modern, versatile scientific publishing system that works with R, Python, and other languages.

**Prerequisites:**
1. Install Quarto from [https://quarto.org](https://quarto.org)
2. Install the rrchecklist package
3. For RStudio users: RStudio 2022.07 or later (for built-in Quarto support)

**Using Quarto templates in RStudio (Recommended):**

```r
# 1. Find the template file path
template_path <- system.file("quarto/templates/reliable-research-checklist/template.qmd",
                             package = "rrchecklist")

# 2. Open the template in RStudio
file.edit(template_path)

# 3. In RStudio: File > Save As...
#    Save to your project directory with a new name (e.g., "my_checklist.qmd")

# 4. Edit your saved file and click "Render" button to generate output
```

**Alternative template:**
```r
# Evaluating primary research
system.file("quarto/templates/evaluating-primary-research-checklist/template.qmd",
            package = "rrchecklist")
```

**Rendering Quarto documents:**

In RStudio, click the "Render" button and select output format (HTML or PDF) from dropdown.

Or from command line:
```bash
quarto render my_checklist.qmd              # HTML (default)
quarto render my_checklist.qmd --to pdf    # PDF
```

### Accessing Help

View detailed information about each template:

```r
library(rrchecklist)

# View help for each template
?evaluating-primary-research-checklist
?reliable-research-checklist
```

### Adding Documentation

The templates include space for notes after each section. Optionally use this to:

- Link to pre-registration (e.g., OSF, AsPredicted)
- Provide data repository URLs (e.g., Dryad, Figshare, Zenodo)
- Reference ethics approval numbers
- Document deviations from planned protocols
- Explain how specific criteria were met

## Example Workflow

```r
# 1. Install package
devtools::install_local("path/to/rrchecklist")

# 2. Create new document from template in RStudio
# File > New File > R Markdown... > From Template

# 3. Edit the document throughout your project

# 4. Knit to HTML for ongoing work
rmarkdown::render("my_checklist.Rmd", output_format = "html_document")

# 5. Knit to PDF when ready for submission
rmarkdown::render("my_checklist.Rmd", output_format = "pdf_document")
```

## Requirements

- R >= 3.6.0
- rmarkdown package
- For PDF output: LaTeX distribution (e.g., TinyTeX, MiKTeX, or MacTeX)

Install LaTeX if needed:

```r
install.packages("tinytex")
tinytex::install_tinytex()
```

## Submission with Manuscripts

The Reliable Research Practices checklist can be submitted as supplementary material during peer review to demonstrate adherence to best practices. This transparency can strengthen your manuscript and facilitate the review process.

## License

This package and all checklist templates are licensed under GNU General Public License v2.0 [GPL-2.0](https://www.tldrlegal.com/license/gnu-general-public-license-v2#fulltext).

## Citation

Pither, J., Vis-Dunbar, M. 2026. rrchecklist: an R package providing markdown templates for checklists to support research assessment and the production of reliable research. 

Based on:

Pither, J. and Vis-Dunbar, M. (2026). Concise guidelines for producing reliable, reproducible research. CC BY-NC-SA 4.0.

## Authors

- Jason Pither ([ORCID](https://orcid.org/0000-0002-7490-6839)); jason <dot> pither [at] ubc <dot> com
- Mathew Vis-Dunbar ([ORCID](https://orcid.org/0000-0001-6541-9660))

## Contributing

To suggest improvements or report issues, please contact the package maintainers or submit an issue on GitHub.
