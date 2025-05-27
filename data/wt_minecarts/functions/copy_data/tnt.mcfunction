#> wt_minecarts:copy_data/tnt
#
# Copy data from TNT minecarts.

#region
	# TNT minecart data
data modify entity @s data.wt_minecarts.CustomName set from entity @e[type=minecraft:tnt_minecart, limit=1, sort=nearest] CustomName

	# Update tags
data modify entity @s Tags set from entity @e[type=minecraft:tnt_minecart, limit=1, sort=nearest] Tags
tag @s remove wt_minecarts.minecart
tag @s add wt_minecarts.minecart_location
tag @s add wt_minecarts

#endregion
