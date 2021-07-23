install-dev-deps: dev-deps
	pip-sync requirements.txt dev-requirements.txt

install-deps: deps
	pip-sync requirements.txt

deps:
	pip-compile requirements.in

dev-deps: deps
	pip-compile dev-requirements.in

run:
	cd src && python manage.py runserver 4444

makemigrations:
	cd src && python manage.py makemigrations

migrate:
	cd src && python manage.py migrate

lint:
	flake8 src