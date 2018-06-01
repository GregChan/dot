install-tools:
	make tmux
	make curl
	make vim
	make fonts
	make pip
	make powerline

install-theme:
	make adapta
	make adapta-papirus
	make gnome-tweak-tool

install-dev-tools:
	make docker
	make docker-compose
	make node
	make pgcli
	make ngrok
	make nmap
	make net-tools

setup:
	./bin/dot-setup

node-setup:
	npm install -g bunyan
	npm install -g eslint_d
	npm install -g bower

adapta:
	sudo add-apt-repository ppa:tista/adapta
	sudo apt-get update
	sudo apt install adapta-gtk-theme

adapta-papirus:
	sudo add-apt-repository ppa:papirus/papirus
	sudo apt-get update
	sudo apt-get install papirus-icon-theme

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
	# Use this for all versions of Ubuntu other than 18.04
	#
	# sudo add-apt-repository \
	# 	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	# 	$(lsb_release -cs) \
	# 	stable"
	#
	# Note: 18.04 doesn't have a stable release yet
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic nightly"
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

gnome-tweak-tool:
	sudo apt install gnome-tweak-tool

ngrok:
	curl -O https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
	unzip ngrok-stable-linux-amd64.zip
	rm ngrok-stable-linux-amd64.zip

nmap:
	sudo apt install nmap

net-tools:
	sudo apt install net-tools

node:
	curl -L https://git.io/n-install | bash

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
