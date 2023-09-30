#> wt_minecarts:copy_data/command
#
# Copy data from command block minecarts.

#region
	# Command block minecart data
data modify entity @s data.wt_minecarts.Command set from entity @e[type=minecraft:command_block_minecart, limit=1, sort=nearest] Command
data modify entity @s data.wt_minecarts.LastOutput set from entity @e[type=minecraft:command_block_minecart, limit=1, sort=nearest] LastOutput
data modify entity @s data.wt_minecarts.SuccessCount set from entity @e[type=minecraft:command_block_minecart, limit=1, sort=nearest] SuccessCount
data modify entity @s data.wt_minecarts.TrackOutput set from entity @e[type=minecraft:command_block_minecart, limit=1, sort=nearest] TrackOutput
data modify entity @s data.wt_minecarts.CustomName set from entity @e[type=minecraft:command_block_minecart, limit=1, sort=nearest] CustomName

	# Update tags
data modify entity @s Tags set from entity @e[type=minecraft:command_block_minecart, limit=1, sort=nearest] Tags
tag @s remove wt_minecarts.minecart
tag @s add wt_minecarts.minecart_location
tag @s add wt_minecarts

#endregion
