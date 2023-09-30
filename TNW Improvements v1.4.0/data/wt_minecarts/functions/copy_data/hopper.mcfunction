#> wt_minecarts:copy_data/hopper
#
# Copy data from hopper minecarts.

#region
	# Hopper minecart data
data modify entity @s data.wt_minecarts.Items set from entity @e[type=minecraft:hopper_minecart, limit=1, sort=nearest] Items
data modify entity @s data.wt_minecarts.CustomName set from entity @e[type=minecraft:hopper_minecart, limit=1, sort=nearest] CustomName

	# Update tags
data modify entity @s Tags set from entity @e[type=minecraft:hopper_minecart, limit=1, sort=nearest] Tags
tag @s remove wt_minecarts.minecart
tag @s add wt_minecarts.minecart_location
tag @s add wt_minecarts

#endregion
