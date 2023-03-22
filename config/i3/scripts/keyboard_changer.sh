#!/bin/bash

current_lang=$(setxkbmap -print | awk -F"+" '/xkb_symbols/ {print $2}')

if [ $current_lang = 'us' ]; then
  setxkbmap gr
fi


if [ $current_lang = 'gr' ]; then
  setxkbmap us
fi

