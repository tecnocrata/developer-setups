# =================
# INSTALLING BREW
# =================
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# =================
# INSTALLING GIT & NODE
# =================
#ssh-keygen -t rsa -b 4096 -C "enrique@ortuno.net"
# cat ~/.ssh/id_rsa.pub
brew install git
git config --global core.editor "nano"

brew install node
npm install -g n

# =================
# INSTALLING Angular - CLI
# =================
npm install -g @angular/cli

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
echo
echo "Installing AWS CLI"
echo "---------------------"
curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# =================
# INSTALLING ZSH
# =================
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# Configure ZSH
# https://medium.com/@mrkdsgn/install-zsh-and-oh-my-zsh-on-osx-10-11-el-capitan-cfaa0ebb97dc

chsh -s =zsh

# =================
# INSTALLING Zim
# Url: https://github.com/zimfw/zimfw
# Why: https://github.com/zimfw/zimfw/wiki/Speed
# =================
# git clone --recursive https://github.com/zimfw/zimfw.git ${ZDOTDIR:-${HOME}}/.zim

# setopt EXTENDED_GLOB
# for template_file in ${ZDOTDIR:-${HOME}}/.zim/templates/*; do
#   user_file="${ZDOTDIR:-${HOME}}/.${template_file:t}"
#   touch ${user_file}
#   ( print -rn "$(<${template_file})$(<${user_file})" >! ${user_file} ) 2>/dev/null
# done

# source ${ZDOTDIR:-${HOME}}/.zlogin
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# ==========================
# INSTALLING powerlevel9k for Zim
# After Install configure using instructions at: https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#option-9-install-for-zim
# ==========================
git clone https://github.com/bhilburn/powerlevel9k.git ~/.zim/modules/prompt/external-themes/powerlevel9k
ln -s ~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme ~/.zim/modules/prompt/functions/prompt_powerlevel9k_setup

# ==========================
# INSTALLING Powerline fonts
# ==========================
# clone
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
# INSTALLING Neo Vim
# =================
brew install neovim

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
brew cask install iterm2
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
