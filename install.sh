#!/bin/bash

printf "Setting Up Your Computer\n"

# Install XCode Command Line Tools
printf "Installing XCode Command Line Tools...\n"
eval "xcode-select --install"

# Install Homebrew for package management
printf "Install Homebrew"
eval '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'


# If this is an M1 mac
if [[ `uname -m` == 'arm64' ]]; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "/Users/$USER/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


