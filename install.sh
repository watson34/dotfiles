#!/bin/bash

set -u

# Get curretn directory
CURR_DIR=$(cd $(dirname $0); pwd)

cd $CURR_DIR

cat << END
****************************
   DOTFILES SETUP START !
****************************
END
for f in .??*; do
    [ "$f" = ".bash_history" ] && continue
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitignore" ] && continue

    ln -snfv ~/dotfiles/"${f}" ~/
done

cat << END
****************************
  DOTFILES SETUP FINISHED !
****************************

END
