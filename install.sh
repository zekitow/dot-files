#!/bin/bash

if [ -d ~/.vim ]; then
  mv ~/.vim ~/.vim.old
fi

echo Creating .vim directory.
mkdir ~/.vim
echo Copying files
cp -r * ~/.vim
cp .vimrc ~/

echo Done.
