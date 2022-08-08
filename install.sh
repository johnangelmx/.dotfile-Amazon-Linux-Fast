#! /bin/bash
# Update linux
sudo yum autoremove -y
sudo yum upgrade -y
sudo yum update -y

# Essentials
sudo yum groupinstall "Development Tools" -y
sudo yum install -y \
    bash zsh zgen sudo wget git g++ make gnupg gnupg2 ca-certificates lsb-release \
    vim nano libbrotli-dev cmake \
    ccze jq less catimg nnn zoxide \
    tldr curl httpie man googler ddgr neofetch \
    htop ncdu icdiff \
    unzip zip bzip2 p7zip-full \
    locales locales-all \
    bat exa \
    sl lolcat cmatrix ffmpeg
# Zsh
sudo yum install zsh -y
echo "here"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "here"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "here"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "here"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
echo "here"
# Copy default configuretions
echo "-------------------------------------------------"
echo "Inicio Copiado"
# sudo cp -fr $HOME/.dotfile-Amazon-Linux/.zshrc .zshrc
echo source $HOME/.dotfile-Amazon-Linux-Fast/.zshrc >> ~/.zshrc
echo "Copiado con exito "
echo "-------------------------------------------------"

# echo source $HOME/.dotfiles-Amazon-Linux/.zshrc >>~/.zshrc
# Node/NPM/PNPM install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source $HOME/.nvm/nvm.sh
nvm install --lts
npm install gtop -g
# Install rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# source $HOME/.cargo/env
# rustc --version
# Cargo apss
# cargo install bat
# cargo install exa

# Install Python whith aws-shell
sudo yum install openssl11 openssl11-devel libffi-devel bzip2-devel wget -y
python --version
sudo yum install python37
python3 --version
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user
pip --version
pip install awsebcli --upgrade --user
eb --version
pip install awsebcli --upgrade --user
pip install aws-shell

# Change to ZSH
sudo yum install util-linux-user -y
sudo chsh $USER -s /usr/bin/zsh

sudo git clone https://github.com/dylanaraps/neofetch.git
sudo cp neofetch/neofetch /usr/bin/neofetch
sudo rm -rf neofetch
sudo rm -fr get-pip.py
# Install exa
wget https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip
unzip exa-linux-x86_64-v*.zip -d exa
sudo mv exa/bin/exa /usr/local/bin/
rm -fr exa-linux-x86_64-v*.zip
rm -fr exa
#Presentation
neofetch
exec zsh
