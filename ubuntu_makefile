install-tools:
	# make tmux
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

ansible:
	sudo apt update
	sudo apt install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt update
	sudo apt install ansible

cmake:
	sudo apt install cmake

compton:
	sudo apt install compton


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

go:
	curl -O https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
	tar -C /usr/local -xzf go*.*.*linux-amd64.tar.gz
	rm go*.*.*.tar.gz

gnome-tweak-tool:
	sudo apt install gnome-tweak-tool

gplusplus:
	sudo apt install g++

gradle:
	sudo apt install gradle

i3:
	sudo apt install i3

java:
	sudo apt-get remove --purge 'openjdk8*'
	sudo add-apt-repository --yes --update ppa:webupd8team/java
	echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
	sudo apt install oracle-java8-installer oracle-java8-set-default

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

nvidia-prime:
	sudo apt install nvidia-prime

pgcli:
	sudo apt install pgcli

pip:
	curl -O https://bootstrap.pypa.io/get-pip.py
	python get-pip.py
	rm get-pip.py

polybar:
	sudo apt install cmake cmake-data pkg-config
	sudo apt install libcairo2-dev
	sudo apt install libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev
	sudo apt install python-xcbgen xcb-proto
	sudo apt install libxcb-image0-dev
	sudo apt install libxcb-ewmh-dev libxcb-icccm4-dev
	sudo apt install libasound2-dev
	sudo apt install libpulse-dev
	sudo apt install libnl-genl-3-dev
	git clone --branch 3.2 --recursive https://github.com/jaagr/polybar
	cd polybar && ./build.sh

powerline:
	pip install powerline-shell

tmux:
	apt install tmux

tree:
	apt install tree

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
