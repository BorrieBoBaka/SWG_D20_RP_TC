#!/bin/bash

#checking if the application is running
ps cax | grep core3 > /dev/null
if [ $? -eq 0 ]; then
  echo "Process is running."
else
  echo "Process is not running. Trying to start the application."
  #start the application
  cd ~/workspace/rpg/Core3/MMOCoreORB/bin
  ./core3

 
  #wait 10 seconds and allow user to interrupt
  echo "Waiting 10 seconds or type 'stop' to interrupt..."
  read -t 10 -p "" input
  if [ $input = 'stop' ]; then
    echo "Stopped."
  else
    echo "Continuing operation."
    #if not interrupted, restart the application and continue operation
    cd ~/workspace/rpg/Core3
    ./operate.sh
  fi
fi