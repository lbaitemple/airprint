#!/bin/bash          
STR=`ippfind | wc -l`
echo $STR

if [ $STR -eq 0 ]; then
  echo "nothing runnning"
  `sudo  /etc/init.d/avahi-daemon restart  >> /dev/null 2>&1`
else
  echo "everything is good!"
fi
