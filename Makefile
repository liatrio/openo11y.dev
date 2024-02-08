TEMP_PATH :=  $(CURDIR)/tmp


.PHONY: poetry-install
poetry-install:
	poetry install

.PHONY: build
build: poetry-install
	poetry run mkdocs build

.PHONY: serve
serve: 
	poetry run mkdocs serve

.PHONY: install-deps
install-deps: install-main-deps poetry-install

.PHONY: install-main-deps
install-main-deps:
	brew bundle --force

.PHONY: backstage
backstage:
	npx @techdocs/cli serve -v
