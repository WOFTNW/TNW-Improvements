#> wt_signs:raycast/start
#
# Automatically wax a placed sign.

#region
	# Tellraw
# tellraw @s "raycast start"

	# Reset scores
scoreboard players operation #wt_signs.max wt_signs.raycast = $wt_signs.max wt_signs.raycast
scoreboard players set #wt_signs.stop wt_signs.raycast 0

	# Start cast
execute at @s anchored eyes positioned ^ ^ ^ run function wt_signs:raycast/loop

#endregion
