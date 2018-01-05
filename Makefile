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

pip:
	curl -O https://bootstrap.pypa.io/get-pip.py | python
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

xclip:
	apt install xclip
