# template-typst-thesis

This repository is a template for writing one's Bachelor's or Master's thesis at the Hochschule Hannover. The template is not affiliated with the university; therefore, ask one's supervisor before using it. Further, there is no guarantee that this template satisfies the style guidelines.

## Installation

For detailed installation instructions, please refer to the official installation guide. Here, we provide basic steps for installing Typst's CLI:

- One can get sources and pre-built binaries from the releases page.
- Use package managers like `brew` or `pacman` to install Typst. The versions in the package managers might need to catch up to the latest release.
- If a Rust toolchain is installed, one can install the latest development version.
Please refer to the official installation guide for detailed instructions for Nix and Docker users.

## Usage

Set the details in `metadata.typ` file. One can work with the files locally. Once Typst is installed, one can use:

```sh
# Creates `thesis.pdf` in working directory.
typst compile thesis.typ

# Creates `proposal.pdf` in working directory.
typst compile proposal.typ

# Creates PDF file at the desired path.
typst compile thesis.typ path/to/output.pdf

# Watches source files and recompiles on changes.
typst watch thesis.typ
```

If one prefers an integrated IDE-like experience with auto-completion and instant preview, the Typst web editor allows one to import files directly into a new or existing document. Here's how one can do this:

1. Navigate to the Typst Web Editor.
2. Create a new blank document.
3. Click on "File" on the top left menu, then "Upload File".
4. Select all .typ and .bib files and the figures provided in this template repository.

---

## Further Resources

- [Typst Documentation](https://typst.app/docs/)
- [Typst Guide for LaTeX Users](https://typst.app/docs/guides/guide-for-latex-users/)
- [Typst VS Code Extension (inofficial)](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp)