## https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

SHELL := /bin/bash
.DEFAULT_GOAL := help

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

test: ## Run the full test suite with molecule
	source .venv/bin/activate; \
	cd go-mod; \
	molecule test
converge: ## Run converge with molecule
	source .venv/bin/activate; \
	cd go-mod; \
	molecule converge
venv: ## Set up the virtual env 
	python3 -m venv .venv; \
	source .venv/bin/activate; \
	pip install -U setuptools pip 'molecule[docker]' pytest testinfra yamllint ansible-lint ; \
	molecule --version

