
#!/bin/bash

# Install Python Modules

# Ask for the administrator password upfront
sudo -v

pip install -U pip

# Setup / Testing
pip install distribute
pip install nose
pip install virtualenv

# DB
pip install cql
pip install psycopg2
pip install pymongo

# Google APIs
pip install google-api-python-client

# AWS
pip install awscli
pip install boto3

# Libs
pip install pyjwt
pip install pyopenssl
