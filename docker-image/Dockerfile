#Based on Python 3.4 on Debian 7.7+
FROM python:3.4-wheezy
MAINTAINER Tim Lauv <bluekvirus@gmail.com>

#Project code directory
ENV PROJECT_DIR /code
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR

#Base pip requirement patch
COPY requirements.txt /metadata/python/
RUN pip install -r /metadata/python/requirements.txt \
        && pip freeze > /metadata/python/pre-installed.txt

#The image is now prepared to be used by Fig
#A*required*: 
#	Mount code volumn to $PROJECT_DIR and start working
#B<optional>: django-admin.py startproject <project name>
#	Create a new code base to work at in $PROJECT_DIR

#Note:
#For front-end we recommend using the bluekvirus/webstarter container.
