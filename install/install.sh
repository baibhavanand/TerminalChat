#!/usr/bin/env bash
#Coded by: Baibhav Anand Jha | Twitter: @spongebhav

echo "
                ///////////////////               
             *.......................*            
            *.........................            
            *.....#####...............            
            ,........#####............            
            ,..........###............            
            ,......####...............            
            ..........................            
            ..........................            
      ####   .........................            
  ##       #    ...................               
  #         ###                                   
   ##     ######   Terminal Chat        
  #### ########                                   
              ##      

   -Chat anonymously in comfort of your Terminal-
      
---Made With Love By - Baibhav | Twitter : @spongebhav---	
             "

if [ "$(id -u)" != "0" ]; then
    echo "Run it as root"

else
  if [ "$1" = "--install" ] ; then
    sudo chmod 777 termchat
    sudo chmod 777 getmessage
    sudo cp termchat /usr/local/bin
    sudo cp getmessage /usr/local/bin
    echo "Installation Successful"

  elif [ "$1" = "--uninstall" ] ; then
    rm -f /usr/local/bin/termchat
    rm -f /usr/local/bin/getmessage
    echo "Uninstallation Successful"
  else
    echo "usage: bash install.sh --install | --uninstall"
  fi      
fi             