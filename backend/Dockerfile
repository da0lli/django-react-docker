FROM python:3.10.4

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Adding backend directory to make absolute filepaths consistent across services
WORKDIR /app/backend

COPY ./requirements.txt ./
COPY ./wsgi-entrypoint.sh ./

RUN pip install --upgrade pip
RUN pip install gunicorn
RUN pip install -r requirements.txt

COPY . /app/backend/

#started from docker-compose hence not necessary
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]