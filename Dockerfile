FROM python:3.8

RUN pip install --upgrade pip

WORKDIR /code
RUN mkdir /code/staticfiles

COPY . /code

RUN pip install -r /code/requirements.txt

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
