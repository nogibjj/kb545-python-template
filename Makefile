install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#Whenever testing needs to occur, either have a test file in the format below, or change test_*.py to the respective filename
	#python -m pytest -vv --cov=main --cov=mylib test_*.py

format:
	#Uncomment once a python file is present, and ready to be formatted correctly. No python files now is causing an error	
	#black *.py 

lint:
	#Whenever a lint check needs to occur, either have a mylib folder, or change mylib to the respective folder name
	#pylint --disable=R,C --ignore-patterns=test_.*?py *.py mylib/*.py

refactor: format lint

deploy:
	#deploy goes here
		
all: install lint test format deploy
