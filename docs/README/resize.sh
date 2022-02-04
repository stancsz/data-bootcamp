#!/bin/bash
sudo apt install imagemagick
for filename in ./*.png; do
  convert -resize 50% $filename $filename
done
