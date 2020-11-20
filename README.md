# A github action for creating professional documents

This action creates documents(PDF) from markdown, reStructuredText or asciidoctor.
Based on [docsAsCode](https://github.com/docascod/DocsAsCode).

## Inputs

### `sources`

**Required** Location of source files in github repository. Default: repo´s root.

## Environment variables

### `DEFAULT_DESTINATION`

Location to output PDF files. Default: source dir

### `DEFAULT_OUTPUT`

Output format for documents. Default: output.document

## Example usage with result in artifact

```yml
on:
  push:
    paths: 
      - 'Example/*.md'
jobs:
  md2pdf:
    runs-on: ubuntu-latest
    name: A job to test this action
    env:
      DEFAULT_DESTINATION: 'Example/build/'
      DEFAULT_OUTPUT: output.slides,output.note
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Build
        uses: docascod/actions-build@1.0
        with:
          sources: 'Example/*.md'
      - name: Publish
        uses: actions/upload-artifact@v2
        with:
          path: ${{ env.DEFAULT_DESTINATION }}/*.pdf
```

NOTE: upload-artifact action always compress result before upload.
