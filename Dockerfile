FROM python:3.6.7-alpine3.7

RUN mkdir /app
WORKDIR /app

RUN adduser -D -u 1000 app

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY ./test_server.py /app/test_server.py

ENV FLASK_APP=test_server.py
ENV FLASK_ENV=development

ENTRYPOINT [ "flask", "run" ]
