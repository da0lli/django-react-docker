#!/bin/sh

apt update
apt install dos2unix

until cd /app/backend
do
    echo "Waiting for server volume..."
done

dos2unix manage.py

until python ./manage.py migrate
do
    echo "Waiting for db to be ready..."
    sleep 2
done

echo "Starting manage.py"
./manage.py collectstatic --noinput

echo "Starting DRF_Server.wsgi"
#DEBUG=True ./manage.py runserver 0.0.0.0:8000
gunicorn DRF_Server.wsgi --bind 0.0.0.0:8000 --workers 4 --threads 4

#####################################################################################
# Options to DEBUG Django server
# Optional commands to replace abouve gunicorn command

# Option 1:
# run gunicorn with debug log level
# gunicorn DRF_server.wsgi --bind 0.0.0.0:8000 --workers 1 --threads 1 --log-level debug

# Option 2:
# run development server
# DEBUG=True ./manage.py runserver 0.0.0.0:8000