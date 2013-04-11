#!/bin/sh

TARGET="$HOME/.dot"
if [ -d "$TARGET" ]; then
  echo "Updating dotfiles repository ..."
  cd $TARGET && git pull origin master
else
  git clone https://github.com/zuqqhi2/dotfiles.git $TARGET
fi

BUNDLE="$TARGET/vim/bundle"
if [ ! -d "$BUNDLE" ]; then
  git clone https://github.com/Shougo/neobundle.vim.git $BUNDLE/neobundle.vim
fi

rm -rf $HOME/.vim
rm -f $HOME/.vimrc
rm -f $HOME/.screenrc
ln -s $TARGET/vim $HOME/.vim
ln -s $TARGET/vim/vimrc $HOME/.vimrc
ln -s $TARGET/screenrc $HOME/.screenrc
echo "Set dotfiles!"
