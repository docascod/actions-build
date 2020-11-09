# actions-build
To build your docs with [docsAsCode](https://github.com/docascod/DocsAsCode).

You can force output format with `DEFAULT_OUTPUT` environment variable.

You can change destination folder with `DEFAULT_DESTINATION` environment variable.

An example to build and upload result as artifact

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
        uses: ./
        with:
          sources: 'Example/*.md'
      - name: Publish
        uses: actions/upload-artifact@v2
        with:
          path: ${{ env.DEFAULT_DESTINATION }}/*.pdf
```
