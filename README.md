# openo11y.dev

Welcome to Open O11y! This repository hosts the website files for [openo11y.dev](https://openo11y.dev), an open-source public website with guidance and information on observability (o11y).

If you're looking to contribute, please see the [contributing](./docs/contributing.md) documentation.

## Local Development

### MkDocs

The site is built using `mkdocs`. You can serve the site locally by running

```sh
make install-deps
make build
make serve
```

## Contributing

- Follow the guidelines established in [CONTRIBUTING.md](docs/CONTRIBUTING.md)
- Images should be placed under the root `img` folder and referred to using HTML `<img>` tags
- H3 header (`###`) should be the default header within a page
- H2 header (`##`) will appear in the navigation as the page's table of contents
- make sure to add to _sidebar
