#> wt_signs:moved
#
# Player has moved from their original location and orientation.

#region
	# Debug
# tellraw @a [{"selector":"@a[tag=wt_signs.moved]"}, " has moved."]

	# Start wax
execute as @a[tag=wt_signs.moved] run function wt_signs:raycast/start

	# Remove tags
tag @s remove wt_signs.still
tag @s remove wt_signs.moved

#endregion
