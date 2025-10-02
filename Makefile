TEMP_PATH :=  $(CURDIR)/tmp


.PHONY: poetry-install
poetry-install:
	poetry install

.PHONY: build
build:
	poetry install --no-root
	poetry run mkdocs build
	poetry run mkdocs build

.PHONY: serve
serve: poetry-install
	poetry run mkdocs serve

.PHONY: brew
brew:
	brew bundle --force

.PHONY: backstage
backstage:
	npx @techdocs/cli serve -v
