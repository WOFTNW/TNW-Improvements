#> wt_minecarts:check_minecart
#
# Check if minecarts still exist or if there is a minecart item instead.

#region
	# Drop extra block if minecart doesn't exist
execute as @e[type=minecraft:marker, tag=wt_minecarts.minecart_location] at @s unless entity @e[type=#wt_minecarts:minecarts, distance=..0.1] if entity @e[type=minecraft:item, predicate=wt_minecarts:minecart_item, distance=..1] run function wt_minecarts:drop_block

	# Tag minecarts
function wt_minecarts:tag_minecart

	# Schedule function
schedule function wt_minecarts:check_minecart 1t

#endregion
