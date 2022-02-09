#!/bin/bash
# Author: Matias Pujado
# Created: 01/02/2022
# Last Modified: 08/02/2022
# Version: 1.0
# Description: It shows if the Wireless Headset is connected and its battery status.

## Variables declared
net_status=$(ping -c 3 google.com)

#######################################################################################################
## 				                           Script Begins					                	     ##
#######################################################################################################

if [[ $net_status ]]; then
	echo '${color2}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color} ${color0}${hr 2}'
else
	echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color} ${color0}${hr 2}'
fi

#######################################################################################################
## 					                        End of Script		                				     ##
#######################################################################################################
