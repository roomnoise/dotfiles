
#!/bin/bash

# Install Python 3 Modules

# Ask for the administrator password upfront
sudo -v

pip3 install pip -U

# Setup / Testing
pip3 install pytest
pip3 install pytest-bdd
pip3 install virtualenv

# Deploy / Scripting
pip3 install ansible -U

# Task Services
pip3 install celery

# Libs
pip3 install pyyaml
pip3 install slackclient
