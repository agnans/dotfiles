echo "Adding repositories..."
sudo add-apt-repository -y ppa:chris-lea/node.js > /dev/null 2>&1
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo Updating apt...
sudo apt-get update -qq

echo Installing software...
sudo apt-get install -qqy \
    checkinstall \
    curl \
    dkms \
    git \
    libatk1.0-dev \
    libbonoboui2-dev \
    libcairo2-dev \
    libffi-dev \
    libgnome2-dev \
    libgnomeui-dev \
    libgtk2.0-dev \
    libncurses5-dev \
    libssl-dev \
    libx11-dev \
    libxml2-dev \
    libxpm-dev \
    libxslt1-dev \
    libxt-dev \
    nodejs \
    python-dev python-pip \
    ruby1.9.1 ruby-dev \
    tmux \
    tree \
    xclip \
    zsh
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
gem install tmuxinator --user-install -q
pip install virtualenv --user
pip install virtualenvwrapper --user
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
if [ ! -d ~/.oh-my-zsh ]; then
  echo Installing oh-my-zsh...
  curl -sL https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | bash
fi
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
sudo apt-get autoremove -qqy
