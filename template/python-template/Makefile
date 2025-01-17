.PHONY: lint
lint:
	rye run ruff check .

.PHONY: format
format:
	rye run ruff check --fix .
	rye run ruff format .

.PHONY: install
install:
	rye sync
	pre-commit install

.PHONY: test
test:
	rye run pytest tests

