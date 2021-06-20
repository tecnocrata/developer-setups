cd ~/
mkdir installation
cd ~/installation

# =================
# INSTALLING BREW
# =================
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# =================
# INSTALLING GIT & NODE
# =================
#ssh-keygen -t rsa -b 4096 -C "enrique@ortuno.net"
# cat ~/.ssh/id_rsa.pub
brew install git
git config --global core.editor "nano"

brew install node
npm install -g n

# ==============
# INSTALLING GIT
# ==============
clear
echo "Installing GIT"
echo "--------------"
echo
read -p "Enter your name (name.lastname) : " userName
read -p "Enter your email : " userEMail
echo 
echo "Configuring..."
echo
git config --global user.name $userName
git config --global user.email $userEMail
clear
echo "Installation completed successfully!!!"
echo 
echo "Your GIT configuration"
echo "----------------------"
git config --list

# =================
# INSTALLING PIP3
# =================
clear
echo
echo "Installing more python stuff like pip3"
echo "---------------------"
brew install python3

pip3 install --user pybin
python3 -m pybin put
python3 -m pybin

# =================
# INSTALLING AWSCLI thru Bundle
# =================
clear
cd ~/installation
echo
echo "Installing AWS CLI"
echo "---------------------"
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# =================
# INSTALLING ZSH Completions (ZSH already comes with macOS)
# =================
cd ~/installation
brew install zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Configure ZSH
# https://medium.com/@mrkdsgn/install-zsh-and-oh-my-zsh-on-osx-10-11-el-capitan-cfaa0ebb97dc

chsh -s =zsh

# =================
# INSTALLING ZSH autosuggestions
# =================
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
cd ~/installation
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# =================
# INSTALLING Zim
# Url: https://github.com/zimfw/zimfw
# Why: https://github.com/zimfw/zimfw/wiki/Speed
# =================
cd ~/installation
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
# zsh ~/.zim/zimfw.zsh install


# ==========================
# INSTALLING powerlevel9k for Zim
# After Install configure using instructions at: https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-9-install-for-zim
# ==========================
# git clone https://github.com/bhilburn/powerlevel9k.git ~/.zim/modules/prompt/external-themes/powerlevel9k
# ln -s ~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme ~/.zim/modules/prompt/functions/prompt_powerlevel9k_setup

cd ~/Library/Fonts 
curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Regular.ttf'
curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold.ttf'
curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Italic.ttf'
curl -O 'https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold Italic.ttf'
cd ~/installation

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# ==========================
# INSTALLING Powerline fonts
# ==========================
# clone
cd ~/
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# =================
# INSTALLING Gogh
# =================
brew update && brew install wget

# =================
# INSTALLING maven
# =================
brew install maven 

# =================
# INSTALLING ack (better than grep)
# =================
brew install ack

# =================
# INSTALLING ag (better than ack)
# =================
brew install the_silver_searcher

# =================
# INSTALLING Tools
# =================
brew install cask
brew install htop
brew install speedtest-cli
#More info about imagemagick: https://www.youtube.com/watch?v=Ym2pxzWpTNw&t=5s
brew install imagemagick
brew install yarn
brew install mc
brew install cmus
brew install peco
brew install tig

# =================
# INSTALLING Markdown convertion tool
# =================
brew install pandoc

# =================
# INSTALLING Browsers
# =================
brew cask install google-chrome
brew cask install microsoft-edge
brew cask install firefox

# =================
# INSTALLING Various Tools
# =================
# brew cask install iterm2
brew install --cask iterm2
brew cask install xquartz
brew cask install the-unarchiver
brew cask install clockify

# =================
# INSTALLING Development tools
# =================
clear
brew cask install docker
brew cask install visual-studio-code
brew cask install visual-studio
brew cask install dotnet-sdk
brew cask install sourcetree

# =================
# INSTALLING Minikube
# AFTER installing this script let's go and start kubernetes/k8s
# https://gist.github.com/tecnocrata/24183dd0d97078bf1f109dc6e7d3e295
# =================
cd ~/installation
brew install kubectl
curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
&& sudo install -o root -g wheel -m 4755 docker-machine-driver-hyperkit /usr/local/bin/
brew install minikube


# =================
# INSTALLING Alfred related tools
# =================
npm install --global alfred-fkill

# =================
# Enabling END and HOME key correctly
# =================
cd ~/Library
mkdir KeyBindings
cd KeyBindings
echo '' > DefaultKeyBinding.dict
echo '{' >> DefaultKeyBinding.dict
echo '/* Remap Home / End keys */' >> DefaultKeyBinding.dict
echo '/* Home Button*/' >> DefaultKeyBinding.dict
echo '"\UF729" = "moveToBeginningOfLine:"; ' >> DefaultKeyBinding.dict
echo '/* End Button */' >> DefaultKeyBinding.dict
echo '"\UF72B" = "moveToEndOfLine:"; ' >> DefaultKeyBinding.dict
echo '/* Shift + Home Button */' >> DefaultKeyBinding.dict
echo '"$\UF729" = "moveToBeginningOfLineAndModifySelection:"; ' >> DefaultKeyBinding.dict
echo '/* Shift + End Button */' >> DefaultKeyBinding.dict
echo '"$\UF72B" = "moveToEndOfLineAndModifySelection:"; ' >> DefaultKeyBinding.dict
echo '/* Ctrl + Home Button */' >> DefaultKeyBinding.dict
echo '"^\UF729" = "moveToBeginningOfDocument:"; ' >> DefaultKeyBinding.dict
echo '/* Ctrl + End Button */' >> DefaultKeyBinding.dict
echo '"^\UF72B" = "moveToEndOfDocument:"; ' >> DefaultKeyBinding.dict
echo '/* Shift + Ctrl + Home Button */' >> DefaultKeyBinding.dict
echo '"$^\UF729" = "moveToBeginningOfDocumentAndModifySelection:";' >> DefaultKeyBinding.dict
echo '/* Shift + Ctrl + End Button*/' >> DefaultKeyBinding.dict
echo '"$^\UF72B" = "moveToEndOfDocumentAndModifySelection:"; ' >> DefaultKeyBinding.dict
echo '}' >> DefaultKeyBinding.dict
cd ~/

# =================
# INSTALLING and CONFIGURING Neo Vim
# =================
brew install neovim
cd .config
echo '' > .vimrc
echo 'set number' >> .vimrc
echo 'set mouse=a' >> .vimrc
echo 'set numberwidth=1' >> .vimrc
echo 'set clipboard=unnamed' >> .vimrc
echo 'syntax enable' >> .vimrc
echo 'set showcmd' >> .vimrc
echo 'set ruler' >> .vimrc
echo 'set encoding=utf-8' >> .vimrc
echo 'set showmatch' >> .vimrc
echo 'set sw=2' >> .vimrc
echo 'set relativenumber' >> .vimrc
echo 'set laststatus=2' >> .vimrc
ln -s ~/.config/.vimrc ~/.vimrc

mkdir nvim
cd nvim
echo '' > init.vim
echo 'set runtimepath^=~/.vim runtimepath+=~/.vim/after' >> init.vim
echo 'let &packpath=&runtimepath' >> init.vim
echo 'source ~/.vimrc' >> init.vim
cd ~/
