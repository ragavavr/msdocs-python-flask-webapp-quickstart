setup:
	python3 -m venv antenv &&\
    source antenv/bin/activate
install:
	python3 -m pip install --upgrade pip &&\
    pip install -r requirements.txt
lint:
	pylint --disable=R,C,W1203,W0702 app.py
all: install lint