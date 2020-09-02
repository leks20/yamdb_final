FROM python:latest

RUN pip install --upgrade pip

RUN mkdir /code
RUN mkdir /code/staticfiles

COPY requirements.txt /code

RUN pip install -r /code/requirements.txt

COPY . /code

WORKDIR /code

CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
