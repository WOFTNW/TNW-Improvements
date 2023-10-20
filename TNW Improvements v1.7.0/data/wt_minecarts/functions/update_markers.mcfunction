#> wt_minecarts:update_markers
#
# Update markers and apply correct tags.

#region
	# Kill previous markers
kill @e[type=minecraft:marker, tag=wt_minecarts.minecart_location]

	# Summon dummy marker
execute at @e[type=#wt_minecarts:minecarts, tag=wt_minecarts.minecart] run summon minecraft:marker ~ ~ ~ {data: {wt_minecarts: {}}, Tags: ["wt_minecarts.update_tags"]}

	# Copy special data to marker
		## Chest minecarts
execute as @e[type=minecraft:marker, tag=wt_minecarts.update_tags] at @s if entity @e[type=minecraft:chest_minecart, limit=1, sort=nearest, distance=..0.1] run function wt_minecarts:copy_data/chest
		## Command block minecarts
execute as @e[type=minecraft:marker, tag=wt_minecarts.update_tags] at @s if entity @e[type=minecraft:command_block_minecart, limit=1, sort=nearest, distance=..0.1] run function wt_minecarts:copy_data/command
		## Furnace minecarts
execute as @e[type=minecraft:marker, tag=wt_minecarts.update_tags] at @s if entity @e[type=minecraft:furnace_minecart, limit=1, sort=nearest, distance=..0.1] run function wt_minecarts:copy_data/furnace
		## Hopper minecarts
execute as @e[type=minecraft:marker, tag=wt_minecarts.update_tags] at @s if entity @e[type=minecraft:hopper_minecart, limit=1, sort=nearest, distance=..0.1] run function wt_minecarts:copy_data/hopper
		## Spawner minecarts
execute as @e[type=minecraft:marker, tag=wt_minecarts.update_tags] at @s if entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest, distance=..0.1] run function wt_minecarts:copy_data/spawner
		## TNT minecarts
execute as @e[type=minecraft:marker, tag=wt_minecarts.update_tags] at @s if entity @e[type=minecraft:tnt_minecart, limit=1, sort=nearest, distance=..0.1] run function wt_minecarts:copy_data/tnt

#endregion
