#> wt_minecarts:copy_data/furnace
#
# Copy data from furnace minecarts.

#region
	# Furnace minecart data
data modify entity @s data.wt_minecarts.CustomName set from entity @e[type=minecraft:furnace_minecart, limit=1, sort=nearest] CustomName

	# Update tags
data modify entity @s Tags set from entity @e[type=minecraft:furnace_minecart, limit=1, sort=nearest] Tags
tag @s remove wt_minecarts.minecart
tag @s add wt_minecarts.minecart_location
tag @s add wt_minecarts

#endregion
