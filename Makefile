.PHONY: jupyter-notebook
jupyter-notebook: .venv/bin/jupyter-notebook
	./.venv/bin/jupyter-notebook

.PHONY: pip-install
pip-install: requirements.txt
	./.venv/bin/python -m pip install -r requirements.txt
	# ./.venv/bin/python -m pip install jupyter numpy matplotlib pandas adjustText tabulate

.PHONY: pip-freeze
pip-freeze:
	./.venv/bin/python -m pip freeze > requirements.txt

.PHONY: recreate-venv
recreate-venv: requirements.txt
	python3 -m venv .venv
	./.venv/bin/python -m pip install -r requirements.txt
