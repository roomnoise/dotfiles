#!/bin/bash

# Install command-line tools using Homebrew

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed
# GNU pg
brew install gnupg2

# Git & Things
brew install git
brew install git-extras
brew install diff-so-fancy
brew install hub

# Languages
brew install nvm
brew install python
brew install pyenv
brew install scala

# Hosting
brew install heroku/brew/heroku

# Databases
brew install cassandra
brew install elasticsearch
brew install mariadb
brew install memcached
brew install postgis
brew install postgres
brew install rabbitmq
brew install redis

# Other Utils
brew install grafana
brew install mas
brew install md5sha1sum
brew install mtr
brew install pipenv
brew install tree
brew install vault
brew install wget
brew install yarn

# Remove outdated versions from the cellar
brew cleanup
