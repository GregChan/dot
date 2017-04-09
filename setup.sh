curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

DOT_PATH="`dirname \"$0\"`"
VIM_PATH="$DOT_PATH/.vimrc"
BASH_PROFILE_PATH="$DOT_PATH/.bash_profile"
TMUX_PATH="$DOT_PATH/.tmux.conf"

cp $VIM_PATH ~/
cp $BASH_PROFILE_PATH ~/
cp $TMUX_PATH ~/
