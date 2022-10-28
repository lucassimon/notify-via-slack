clean:
	find . -name '*.pyc' -exec rm --force {} +
	find . -name '*.pyo' -exec rm --force {} +
	find . | grep -E "__pycache__|.pytest_cache|.pyc|.DS_Store$$" | xargs rm -rf
	@rm -rf build/
	@rm -rf dist/
	@rm -f *.egg
	@rm -f *.eggs
	@rm -rf *.egg-info/
	@coverage erase || exit 1
	@rm -rf htmlcov/
	@rm -f .coverage
	@rm -f .coverage.*
	@rm -rf .cache/
	@rm -f coverage.xml
	@rm -f *.cover
	@rm -rf testresults
	@rm -rf .pytest_cache/


clean-build: clean
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info

lint: clean
	@pylint slack/

lint_black:
	@black --check slack/ src/

lint_isort:
	@isort --check-only slack/ src/

black:
	@black slack/ src/

isort:
	@isort slack/ src/

style: isort black

test: clean-build
	@pytest
