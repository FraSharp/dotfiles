#!/bin/bash

file="screenshot-`date +%F-%T`"
grim -g "$(slurp)" ~/Screenshots/$file.png

