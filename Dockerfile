FROM python:3.12-alpine

RUN pip install poetry

COPY . ./test

WORKDIR /test

RUN poetry install --no-root