
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
pip install virtualenv

# DB
pip install cql
pip install psycopg2
pip install pymongo
pip install redis

# Task Services
pip install celery

# Google APIs
pip install google-api-python-client

# AWS
pip install awscli
pip install boto3 -U

# Stats/Errors
pip install raven

# Libs
pip install jupyter
pip install passlib
pip install pyjwt
pip install pyopenssl
pip install pytube
pip install pyyaml
pip install slackclient
pip install statsd
pip install xlrd

# Utilities
pip install sh
