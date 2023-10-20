#> wt_signs:raycast/stop
#
# Stop raycast.

#region
	# Stop raycast
scoreboard players set #wt_signs.stop wt_signs.raycast 1
scoreboard players operation @s wt_signs.raycast = #wt_signs.max wt_signs.raycast

#endregion
