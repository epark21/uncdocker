setup:
	python3 -m venv ~/.uncdocker

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


lint:
	hadolint dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test