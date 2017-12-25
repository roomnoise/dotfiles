
#!/bin/bash

# Install Python Modules

# Ask for the administrator password upfront
sudo -v

pip install pip -U

# Setup / Testing
pip install distribute
pip install mock
pip install nose
pip install pytest
pip install pytest-bdd
pip install virtualenv

# Deploy / Scripting
pip install ansible -U

# Linters
pip install pycodestyle

# DB
pip install cql
pip install psycopg2
pip install pymongo
pip install redis

# Task Services
pip install celery
pip install celery-redbeat

# Google APIs
pip install google-api-python-client

# Django
pip install Django
pip install dj-database-url
pip install django-extensions
pip install django-fsm
pip install django-guardian
pip install djangorestframework

# AWS
pip install awscli
pip install boto3

# Stats/Errors
pip install raven

# Libs
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
