# path to dot
MY_PATH="`dirname \"$0\"`"
VIM_PATH="$MY_PATH/.vimrc"
BASH_PROFILE_PATH="$MY_PATH/.bash_profile"

diff $VIM_PATH ~/.vimrc
diff $BASH_PROFILE_PATH ~/.bash_profile
