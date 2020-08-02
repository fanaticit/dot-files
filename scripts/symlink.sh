#!/bin/bash

# Up from scripts dir
#cd ..

dotfilesDir=$(pwd)
desktopFilesDir=$(pwd)/desktopFiles

function linkDotfile {
  dest="${HOME}/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink: ${dest}"
  ln -s ${dotfilesDir}/${1} ${dest}
}

function linkDesktopFile {
  dest="${HOME}/.local/share/applications/${1}"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/Desktop/${1} ]; then
    # Existing desktop link
    echo "Removing existing desktop link: $dest"
    rm $dest

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}

  fi

  echo "Creating new desktop link: ${dest}"
  ln -s ${desktopFilesDir}/${1} ${dest}
}

# linkDotfile .vimrc
# linkDotfile .tmux.conf
linkDotfile .bashrc
# linkDotfile .bash_profile
# linkDotfile .gitconfig
# linkDotfile .gitmessage
# linkDotfile .git-completion.bash

linkDesktopFile "chrome-Outlook-Default.desktop"
linkDesktopFile "chrome-GoogleKeep-Default.desktop"
linkDesktopFile "chrome-OneNote-OpenMoney-Default.desktop"