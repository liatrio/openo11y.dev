TEMP_PATH :=  $(CURDIR)/tmp


.PHONY: poetry-install
poetry-install:
	poetry install

.PHONY: build
build:
	poetry run mkdocs build

.PHONY: serve
serve: 
	poetry run mkdocs serve

.PHONY: install-deps
install-deps:
	brew bundle --force

.PHONY: backstage
backstage:
	npx @techdocs/cli serve -v
