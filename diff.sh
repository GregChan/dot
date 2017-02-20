# path to dot
DOT_PATH="`dirname \"$0\"`"

VIM_PATH="$DOT_PATH/.vimrc"
BASH_PROFILE_PATH="$DOT_PATH/.bash_profile"
TMUX_PATH="$DOT_PATH/.tmux.conf"

echo ".vimrc"
diff $VIM_PATH ~/.vimrc

echo ""

echo ".bash_profile"
diff $BASH_PROFILE_PATH ~/.bash_profile

echo ""

echo ".tmux.conf"
diff $TMUX_PATH ~/.tmux.conf
