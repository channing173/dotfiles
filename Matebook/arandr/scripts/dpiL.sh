#!/bin/bash

cp ~/arandr/laptop/.Xresources ~/
cp ~/arandr/laptop/config ~/.config/rofi
xrdb ~/.Xresources
i3-msg restart
