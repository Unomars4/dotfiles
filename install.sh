#!/bin/bash

printf "Putting your Computer together\n"

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

printf "\nInstalling other brew casks...\n"
eval "brew install gh neovim tmux fzf"

# Install Fonts
printf "\n Install Fonts\n"
eval "brew install --cask font-fira-code font-noto-emoji"

# Install Terminal Plugins
printf "\nInstalling Oh My Zsh\n"
eval "sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"

printf "\nInstalling github CLI...\n"
eval "brew install gh"

printf "\nInstalling spaceship prompt\n"
eval "git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1"
echo "ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme""

printf "\nInstalling ZSH autosuggestions plugin\n"
eval "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

printf "\nInstalling ZSH syntax highlighting plugin\n"
eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

# Copy ZSH config
printf "${YELLOW}Copying ZSH config into ~/.zshrc...${NORMAL}\n"
eval "cp ./.zshrc ~/.zshrc"

# Install NVM
printf "\n${GREEN}Installing NVM...${NORMAL}\n"
eval "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash"

# Refresh ZSH config
eval "source ~/.zshrc"
eval "nvm install --lts"

# Copy Configs
printf "\n Copy All Configs\n"
eval "cp ./.config ~/.config"

# Browsers
eval "open https://www.google.com/chrome/"

# Devlopement tools
eval "open https://www.iterm2.com/"
eval "open https://docs.docker.com/docker-for-mac/install/"

# Miscellaneous
eval "open https://www.spotify.com/us/download/mac/"

# Configuring Github SSH and all that jazz
eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account"
