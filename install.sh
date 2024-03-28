#!/bin/bash

printf "Putting your Computer together\n"

# Install Homebrew for package management
printf "Install Homebrew"
eval '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

# If this is an M1 mac
if [[ `uname -m` == 'arm64' ]]; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "/Users/$USER/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

printf "\nInstalling other brew packages...\n"
eval "brew install gh neovim tmux"

# Install Package Managers
printf "\nInstalling Package Manangers\n"
eval "brew install yarn rustup"

# Install Fonts
printf "\n Install Fonts\n"
eval "brew tap homebrew/cask-fonts && brew install --cask font-fira-code font-noto-emoji"

# Devlopement tools
eval "brew install --cask iterm2"

# Install Terminal Plugins
printf "\nInstalling Oh My Zsh\n"
eval "sh -c '$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)'"

printf "\nInstalling Docker CLI\n"
eval 'brew install docker docker-compose docker-buildx'

printf "\nInstalling spaceship prompt\n"
eval "git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1"
echo "ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme""

printf "\nInstalling ZSH autosuggestions plugin\n"
eval "git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

printf "\nInstalling ZSH syntax highlighting plugin\n"
eval "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

# Copy ZSH config
printf "Copying ZSH config into ~/.zshrc...\n"
eval "cp ./.zshrc ~/.zshrc"

# Install tmux plugins
printf "\nInstalling Tmux plugins\n"
eval "git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/"

# Install NVM
printf "\nInstalling NVM...\n"
eval "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash"

# Refresh ZSH config
eval "source ~/.zshrc"
eval "nvm install --lts"

# Copy Configs
printf "\n Copy All Configs\n"
eval "cp -r ./.config ~/"

# Browsers
eval "open https://www.google.com/chrome/"

# Miscellaneous
eval "open https://www.spotify.com/us/download/mac/"

# Configuring Github SSH and all that jazz
eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.gi.configthub.com/articles/adding-a-new-ssh-key-to-your-github-account"
