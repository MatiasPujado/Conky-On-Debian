#!/bin/bash
# Author: Matias Pujado
# Created: 01/02/2022
# Last Modified: 08/02/2022
# Version: 1.0
# Description: It shows if the Wireless Headset is connected and its battery status.

## Variables declared
status=$(headsetcontrol -bc)

#######################################################################################################
## 					Script Begins						     ##
#######################################################################################################

if [[ $status ]]; then
	if [[ $status -eq -1 ]]; then # When the battery is charging [Charging Color]
		echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}  Charging  ${color9}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
	else
		if [[ $status -eq 100 ]]; then # Battery fully charged (100%) [Dark Green-2]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color2}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -lt 100 && $status -ge 90 ]]; then # Battery draining (99% - 90%) [Green]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 89 && $status -ge 80 ]]; then # Battery draining (89% - 80%) [Green]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 79 && $status -ge 70 ]]; then # Battery draining (79% - 70%) [Green]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 69 && $status -ge 60 ]]; then # Battery draining (69% - 60%) [Green]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 59 && $status -ge 50 ]]; then # Battery draining (59% - 50%) [Yellow]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color4}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 49 && $status -ge 40 ]]; then # Battery draining (49% - 40%) [Yellow]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color4}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 39 && $status -ge 30 ]]; then # Battery draining (39% - 30%) [Orange]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color5}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 29 && $status -ge 20 ]]; then # Battery draining (29% - 20%) [Orange]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color5}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 19 && $status -ge 10 ]]; then # Battery draining (19% - 10%) [Red]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color6}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
		if [[ $status -le 9 && $status -ge 0 ]]; then # Battery draining (9% - 0%) [Red]
			echo '${color3}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}${color0}' $status'% ${color6}${font 3270Narrow Nerd Font:pixelsize=24}${font}${color}'
		fi
	fi
else
	echo '${color8}${font 3270Narrow Nerd Font:pixelsize=22}${font}${color} ${color8}OFF'
fi

#######################################################################################################
## 					End of Script						     ##
#######################################################################################################
