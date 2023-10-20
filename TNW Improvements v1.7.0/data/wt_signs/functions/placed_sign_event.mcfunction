#> wt_signs:placed_sign_event
#
# Handles when a player places a sign.

#region
	# Initialise
tag @s add wt_signs.still

	# Check movement
schedule clear wt_signs:check_movement
function wt_signs:check_movement

	# Reset advancement
advancement revoke @s only wt_signs:placed_sign

#endregion
