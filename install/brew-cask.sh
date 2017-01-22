#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions

brew cask install 1password
brew cask install atom
brew cask install charles
brew cask install dropbox
brew cask install evernote
brew cask install flux
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install google-drive
brew cask install grammarly
brew cask install iterm2
brew cask install join.me
brew cask install firefox
brew cask install moom
brew cask install opera
brew cask install sequel-pro
brew cask install sketch
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install sublime-text
brew cask install todoist
brew cask install transmit

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
