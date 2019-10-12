
#!/bin/bash

# Install Pyenv 
if test ! $(which pyenv)
then
  curl https://pyenv.run | bash
  echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
  echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
  exec $SHELL
fi

pyenv install 3.7.4

# Install Python Modules

# Ask for the administrator password upfront
sudo -v

pip install pip -U

# Virtual Env
pip install pipenv

# Setup / Testing
pip install mock
pip install nose
pip install pytest
pip install pytest-bdd
pip install virtualenv
pip install watchdog

# Deploy / Scripting
# pip install ansible -U

# Linters
pip install pycodestyle

# DB
pip install cql
pip install psycopg2
pip install pymongo
pip install redis

# Task Services
pip install apache-airflow
pip install celery
pip install celery-redbeat

# Google APIs
pip install google-api-python-client

# Django
pip install django
pip install dj-database-url
pip install django-extensions
pip install django-fsm
pip install django-guardian
pip install djangorestframework

# AWS
pip install awscli
pip install boto3

# Messaging
pip install slackclient

# Stats/Errors
pip install sentry-sdk

# Libs
pip install beautifulsoup4
pip install conversion
pip install guardian
pip install jupyter
pip install pandas
pip install passlib
pip install pyjwt
pip install pyopenssl
pip install pytube
pip install pyyaml
pip install slackclient
pip install statsd
pip install ujson
pip install xlrd

# Utilities
pip install sh
