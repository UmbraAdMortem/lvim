#!/bin/sh

for file in $(find ~/.config/lvim/scripts -name '*.sh' -type f)
do
  echo $file
  $file
done

lvim +LvimUpdate +q
