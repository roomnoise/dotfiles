#!/bin/sh

#
# This script configures my Node.js development setup. Note that
# nvm is installed by the Homebrew install script.
#
# Also, I would highly reccomend not installing your Node.js build
# tools, e.g., Grunt, gulp, WebPack, or whatever you use, globally.
# Instead, install these as local devDepdencies on a project-by-project
# basis. Most Node CLIs can be run locally by using the executable file in
# "./node_modules/.bin". For example:
#
#     ./node_modules/.bin/webpack --config webpack.local.config.js
#

if test ! $(which nvm)
then
  echo "Installing a stable version of Node..."

  # Install the latest stable version of node
  nvm install stable

  # Switch to the installed version
  nvm use node

  # Use the stable version of node by default
  nvm alias default node

  # temp fix for removing prefix
  nvm use --delete-prefix v7.5.0
fi

# All `npm install <pkg>` commands will pin to the version that was available at the time you run the command
npm config set save-exact = true

# Globally install with npm
# To list globally installed npm packages and version: npm list -g --depth=0
#
# Some descriptions:
#
# diff-so-fancy — sexy git diffs
# git-recent — Type `git recent` to see your recent local git branches
# git-open — Type `git open` to open the GitHub page or website for a repository
npm install -g diff-so-fancy
npm install -g git-recent
npm install -g git-open
npm install -g gulp
npm install -g http-server
npm install -g nodemon
npm install -g npm-check
npm install -g webpack
