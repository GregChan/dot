curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

MY_PATH="`dirname \"$0\"`"
VIM_PATH="$MY_PATH/.vimrc"
BASH_PROFILE_PATH="$MY_PATH/.bash_profile"

cp $VIM_PATH ~/
cp $BASH_PROFILE_PATH ~/
