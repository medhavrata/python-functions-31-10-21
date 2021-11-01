install:
	pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello tests
	#python -m pytest --nbval notebook.ipynb	#tests our jupyter notebook
	#python -m pytest -v tests/test_web.py #if you just want to test web

format:
	black *.py

lint:
	pylint --disable=R,C hello.py cli.py

all: install lint test format