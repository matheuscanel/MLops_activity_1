install: 
    pip install --upgrade pip &&\
	pip install -r requirements.txt

format:
	black *.py
lint:
    flake8 --max-line-length=88 *.py
test:
	pytest -v 
all:
	install format lint test