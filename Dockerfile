FROM python:3.8.5

RUN mkdir /code
COPY requirements.txt /code
RUN pip install -r /code/requirements.txt
COPY . /code
WORKDIR /code
#RUN python . /code/manage.py migrate
CMD python manage.py migrate && gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
#CMD gunicorn api_yamdb.wsgi:application --bind 0.0.0.0:8000
