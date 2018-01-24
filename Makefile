install:
	make git
	make tmux
	make curl
	make vim
	make fonts

setup:
	./bin/dot-setup

curl:
	apt install curl

docker:
	sudo apt-get update
	sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo apt-key fingerprint 0EBFCD88
	sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
	sudo apt-get update
	sudo apt-get install docker-ce

docker-compose:
	sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose

fonts:
	# Install Powerline fonts
	# clone
	git clone https://github.com/powerline/fonts.git --depth=1
	# install
	./fonts/install.sh
	# clean-up a bit
	rm -rf fonts
git:
	apt install git
	git config --global user.name "Greg Chan"
	git config --global user.email "gregorywarrenchan@gmail.com"

node:
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

pgcli:
	sudo apt install pgcli

pip:
	curl -O https://bootstrap.pypa.io/get-pip.py
	python get-pip.py
	rm get-pip.py

powerline:
	pip install powerline-shell

tmux:
	apt install tmux

vim:
	# install vim
	apt install vim
	# install neovim
	add-apt-repository ppa:neovim-ppa/stable
	apt-get update
	apt-get install neovim

wallpaper:
	add-apt-repository ppa:whizzzkid/bingwallpaper
	apt update
	apt install bingwallpaper

xclip:
	apt install xclip
