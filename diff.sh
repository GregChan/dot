# path to dot
MY_PATH="`dirname \"$0\"`"
VIM_PATH="$MY_PATH/.vimrc"
BASH_PROFILE_PATH="$MY_PATH/.bash_profile"

echo ".vimrc"
diff $VIM_PATH ~/.vimrc

echo ""

echo ".bash_profile"
diff $BASH_PROFILE_PATH ~/.bash_profile
