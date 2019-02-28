#!/bin/bash

cp ~/arandr/monitor/.Xresources ~/
cp ~/arandr/monitor/config ~/.config/rofi
xrdb ~/.Xresources
i3-msg restart
