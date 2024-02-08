# openo11y.dev

Welcome to OpenO11y! This repository hosts the website files for [openo11y.dev](https://openo11y.dev), an open-source public website dedicated to providing guidance and resources on observability (o11y).

If you're looking to contribute, please see the [contributing](./docs/contributing.md) documentation.

## Local Development

### Tooling

The following tools will need to be installed:

- [Make](https://www.gnu.org/software/make/): A build automation tool.
- [Python](https://www.python.org/downloads/): The programming language used for development.
- [Poetry](https://python-poetry.org/docs/#installation): A tool for dependency management in Python.

Note: OSX users with [Homebrew](https://brew.sh/) installed can install Poetry by running the command `make brew`.

### Working on Documentation

Our site is built using [mkdocs](https://www.mkdocs.org/), a static site generator optimized for project documentation. It features
hot reloading, allowing immediate preview of changes, and can compile documentation into static assets for deployment.

To work on the documentation:

- Use `make serve` to start a local server. Your changes can be viewed in real-time at http://127.0.0.1:8000.
- To build the documentation, run `make build`. This command generates static files and stores them in the `./site` directory.

## Contributing

- Follow the guidelines established in [CONTRIBUTING.md](docs/CONTRIBUTING.md)
- Images should be placed under the root `img` folder and referred to using HTML `<img>` tags
- H3 header (`###`) should be the default header within a page
- H2 header (`##`) will appear in the navigation as the page's table of contents
- make sure to add to _sidebar
