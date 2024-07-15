FROM python:3.12-alpine

RUN pip install poetry

COPY . ./test

WORKDIR /test

RUN poetry install --no-root

CMD sh -c "poetry run python3 ./src/manage.py migrate && poetry run python3 ./src/manage.py runserver 0.0.0.0:8000"