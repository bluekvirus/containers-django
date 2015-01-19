#!/bin/bash
cd $DJANGO_PROJECT_DIR

#auto detect project source code:
SOURCE_DIR=django_apps
if [ ! -e manage.py ]; then
    echo "Creating django project..."
    django-admin startproject $SOURCE_DIR .
else
    echo "Existing project found"
fi

#start the app server:
#opt 1. default python web server
#python manage.py runserver 0.0.0.0:80
#opt 2. uwsgi web server (behind nginx, use --socket instead of --http to talk uwsgi)
uwsgi --socket :8000 --module $SOURCE_DIR.wsgi --master --processes 4 --threads 2

