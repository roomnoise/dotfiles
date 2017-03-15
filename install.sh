#!/usr/bin/env bash

# Get current dir (so fun this script from anywhere...)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Setup the symlinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore" ~


###############################################################################
# Homebrew                                                                    #
###############################################################################

. $HOME/dotfiles/install/brew.sh
. $HOME/dotfiles/install/brew-cask.sh


###############################################################################
# Node                                                                        #
###############################################################################

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

. $HOME/dotfiles/install/npm.sh


###############################################################################
# Ansible                                                                     #
###############################################################################

sudo pip install ansible


###############################################################################
# Atom                                                                        #
###############################################################################

# Copy over Atom configs
cp -r atom/config.cson $HOME/.atom
cp -r atom/packages.list $HOME/.atom

# Install community packages
apm list --installed --bare # get a list of installed packages
# todo: put a prompt for this install
#apm install --packages-file $HOME/.atom/packages.list


###############################################################################
# Vagrant                                                                     #
###############################################################################

vagrant plugin install vagrant-bindfs
vagrant plugin install vagrant-hostmanager
