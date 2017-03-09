
#!/bin/bash

# Install Python Modules

# Ask for the administrator password upfront
sudo -v

# Setup / Testing
pip install distribute -U
pip install nose
pip install virtualenv

# DB
pip install cql

# Google APIs
pip install google-api-python-client

# Libs
pip install pyjwt
