activate:
	@echo "Activating virtual environment"
	poetry shell

install: 
	@echo "Installing..."
	poetry install

pull_data:
	@echo "Pulling data..."
	dvc pull -r read

setup: install pull_data

test:
	pytest