#!/bin/bash 
#====================================================
#
#          FILE: build.sh
# 
#         USAGE: ./build.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 11/09/2018 02:09
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------
DIR1=$HOME/development/Docker/build-rpi-docker-transmission-openvpn
#-------------------------------------
function Main ()
{
	echo "Please enter MANJAROPASSWORD:"
	read MANJAROPASSWORD
	docker build --build-arg MANJAROPASSWORD="$MANJAROPASSWORD" -t stiles/rpi-docker-transmission-openvpn:latest "$DIR1"
}	# end Main

Main

#===EXIT===
exit 0
