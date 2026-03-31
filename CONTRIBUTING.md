# Contributing to rrchecklist

Thank you for considering contributing to rrchecklist! This document provides guidelines for contributing to the package.

## Types of Contributions

We welcome several types of contributions:

### Bug Reports

If you find a bug:

1. Check existing [issues](https://github.com/pitherj/rrchecklist/issues) to avoid duplicates
2. Create a new issue with:
   - Clear description of the problem
   - Steps to reproduce
   - Expected vs. actual behavior
   - Your system information (R version, OS, package version)
   - Any error messages

### Feature Requests

Have an idea for improving the checklists?

1. Check existing issues for similar suggestions
2. Create a new issue describing:
   - The problem or limitation you're addressing
   - Your proposed solution
   - How it would benefit users
   - Any relevant research or guidelines

### Template Improvements

To suggest changes to checklist content:

1. Provide rationale based on research best practices
2. Include references to relevant literature or guidelines
3. Explain how the change improves research quality or transparency
4. Consider whether it applies to all research domains

### Documentation

Help improve documentation by:

- Fixing typos or unclear instructions
- Adding examples
- Improving help files
- Translating documentation (future)

## How to Contribute Code

### Setup

1. Fork the repository on GitHub
2. Clone your fork:
   ```bash
   git clone https://github.com/pitherj/rrchecklist.git
   cd rrchecklist
   ```

3. Install development dependencies:
   ```r
   install.packages(c("devtools", "roxygen2", "testthat"))
   devtools::install_deps(dependencies = TRUE)
   ```

### Making Changes

1. Create a new branch:
   ```bash
   git checkout -b descriptive-branch-name
   ```

2. Make your changes:
   - For template content: Edit files in `inst/rmarkdown/templates/` or `inst/quarto/templates/`
   - For documentation: Edit `.Rd` files in `man/` or update README
   - Follow existing code style and formatting

3. Test your changes:
   ```r
   devtools::check()  # Run R CMD check
   devtools::install() # Install locally
   ```
   - Create a test document from the modified template
   - Render to both HTML and PDF
   - Verify formatting and functionality

4. Document your changes:
   - Update NEWS.md with a brief description
   - Update help files if needed

5. Commit your changes:
   ```bash
   git add .
   git commit -m "Brief description of changes

   More detailed explanation if needed.
   Closes #issue-number"
   ```

6. Push to your fork:
   ```bash
   git push origin descriptive-branch-name
   ```

7. Create a pull request:
   - Go to the original repository on GitHub
   - Click "New Pull Request"
   - Select your branch
   - Provide a clear description of your changes

## Style Guidelines

### R Code

- Use descriptive variable names
- Comment complex logic
- Follow tidyverse style guide where applicable

### Template Content

- Use clear, concise language
- Maintain consistent formatting
- Ensure checkbox items are actionable
- Provide context in notes sections

### Commit Messages

- Use present tense ("Add feature" not "Added feature")
- First line: brief summary (50 chars or less)
- Add detailed explanation in body if needed
- Reference relevant issues with #issue-number

## Review Process

1. Maintainers will review your pull request
2. They may request changes or ask questions
3. Address feedback by pushing new commits to your branch
4. Once approved, maintainers will merge your contribution

## Questions?

If you have questions about contributing:

- Check existing documentation
- Open an issue with your question
- Contact maintainers: pitherj [at] gmail <dot> com 

## Attribution

By contributing, you agree that your contributions will be licensed under the same MIT license as the project.

