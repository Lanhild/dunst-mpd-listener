#!/bin/bash
# Get the song that is currently played and store it to a variable
oldsong=$(mpc current)
# Stays on loop while the script is active
while "true"; do
	# Check if the current song is equal to the one that was playing before (oldsong)
	if [[ "$(mpc current)" != "$oldsong" ]]; then
		# If not equal, assign the new song to the variable to be checking again correctly
		oldsong=$(mpc current)
		# And send the notification
		notify-send "Now playing" "$(mpc current)"
	fi
	# Change "1" to any value in seconds you want
	sleep 1
done
