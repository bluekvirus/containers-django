Django Dev/Deploy Containers
============================
This is the repository for building Django project DevOps environment. 
You will have a clean & functional environment within 2min.

Prerequisite
------------
You will need to have Docker and Fig installed on your host machine.

Usage
-----
Pull this repository and just run `fig up -d`, your Django code lives in `/code`.

- The default setup contains 1 nginx, 1 django, 1 postgres/mongo, 1 redis and 1 rabbitmq.
- The django project is served through a multi-process `uwsgi` app server in the container.
- The django container has node 0.10.35+ installed to support `django-pipeline` customization.
- The django container comes with `django-rest-framework 3` and `Celery 3` installed.

Use `django-admin.py` and `manage.py` on the django container for django cli tasks.

Test
----
Go to `http://localhost:8000` or `http://<boot2docker ip>:8000` on the host machine to see your Django project served live.

*Gotcha*: You might want to run `manage.py migrate` before starting development with newly created containers.
If you prefer not to run into this problem again, use `fig up --no-recreate -d` instead. 

Customize
---------
Read `docker-image` folder's content and see how we built the default django container.
Read `fig.yml` and `fig-init` folder's content to see how we orchestrated the dev/deploy environment.

You will most likely tweak the environment by modifying Fig related files.
