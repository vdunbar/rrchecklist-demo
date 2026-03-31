# rrchecklist 0.2.0

## Updates based on revised guidelines (2026-03-17)

* Updated reference: Pither & Vis-Dunbar (2026). Concise guidelines for producing reliable, reproducible research.

* Checklist content updates aligned with revised guidelines:
  - "Define target population" item now includes scope of inference and units of observation
  - "Specify experimental or observational" item now includes quasi-experimental designs
  - Added new item: justify sample sizes for exploratory research
  - "Multiverse analysis" item replaced with sensitivity analysis
  - Section D renamed: "Enhancing Transparency, Replicability, Discoverability, and Impact"

* Evaluating Primary Research checklist updates:
  - Added quasi-experimental design item to Study Rationale section
  - Added warning sign: pilot studies presented as confirmatory research

## Package fixes

* Removed `LazyData: true` from DESCRIPTION (no data objects in package)
* Updated `RoxygenNote` to 7.3.3
* Added `quarto` to Suggests
* Fixed `rmarkdown::metadata$author` in Quarto evaluating template (replaced with static placeholder)
* Removed internal `rrchecklist:::enumerate_templates()` call from package documentation
* Removed hidden backup/removed template directories from `inst/` and `man/`

# rrchecklist 0.1.0

## Initial Release

* Added two R Markdown templates for reliable research practices:
  - Evaluating Primary Research Checklist
  - Reliable Research Practices Checklist

* Added Quarto versions of both templates

* Each template supports both HTML and PDF output formats

* Help documentation for all templates

* Based on: Pither, J. and Vis-Dunbar, M. (2025). Concise guidelines for producing reliable research. CC BY-NC-SA 4.0.
