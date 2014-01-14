for FILE in bashrc vimrc bash_aliases Xresources
do
  rm -i ~/.$FILE
  if [ ! -e ~/.$FILE ]; then
    echo "Created symlink from ~/.$FILE to ~/dotfiles/$FILE"
    ln -s ~/dotfiles/$FILE ~/.$FILE
  fi
done

