#!/bin/bash

clear
echo "  Hello! Welcome to How You Doin (HYD) app help & info section"
echo "  There isn't much instructions to give to use the app,"
echo "  other than to just follow along the prompts."
echo "  --------------------------------------------------------------"
echo "  When you're ready, please type '1'"
echo "  --------------------------------------------------------------"
read user_input

if [ $user_input -eq 1 ]
then
  ruby hyd_app.rb
else
  echo "  Please type './hyd_app.sh' or 'ruby hyd_app.rb' to run the app :-)"
fi