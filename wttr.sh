#!/bin/bash
read -p "Enter full path for file wttr.in:" PATH_WTTR
# Check path to dir 
if [[ -d $PATH_WTTR/wttr.in ]]; then echo "File wttr.in exists."; else echo "Sorry, file wttr.in not found"; exit 1; fi	

read -p "Enter your city:" CITY
# Check var input
if [[ -z ${CITY} ]]; then echo "City name is not input"; exit 1; fi

cd $PATH_WTTR && curl wttr.in/$CITY?format="%t:+%h\n"
exit 0
