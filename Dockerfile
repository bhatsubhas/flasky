FROM python:3.9.3-slim-buster

ENV PYTHONUNBUFFERED True
ENV APP_HOME /opt/app
ENV APP_PORT 8080
ENV FLASK_APP app.py
ENV FLASK_ENV development

RUN mkdir ${APP_HOME}

WORKDIR ${APP_HOME}

COPY . ${APP_HOME}

RUN pip install --no-cache-dir -r ./requirements.txt

CMD flask run --host 0.0.0.0 --port ${APP_PORT}



