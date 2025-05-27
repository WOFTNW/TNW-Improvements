#> wt_minecarts:tag_minecart
#
# Tag minecarts with their respective tags.

#region
	# Tag minecarts
execute at @a run tag @e[type=#wt_minecarts:minecarts, tag=!wt_minecarts, distance=..40] add wt_minecarts
execute at @a run tag @e[type=#wt_minecarts:minecarts, tag=!wt_minecarts.minecart, distance=..40] add wt_minecarts.minecart
execute at @a run tag @e[type=minecraft:chest_minecart, tag=wt_minecarts.minecart, tag=!wt_minecarts.minecart_type.chest] add wt_minecarts.minecart_type.chest
execute at @a run tag @e[type=minecraft:command_block_minecart, tag=wt_minecarts.minecart, tag=!wt_minecarts.minecart_type.command] add wt_minecarts.minecart_type.command
execute at @a run tag @e[type=minecraft:furnace_minecart, tag=wt_minecarts.minecart, tag=!wt_minecarts.minecart_type.furnace] add wt_minecarts.minecart_type.furnace
execute at @a run tag @e[type=minecraft:hopper_minecart, tag=wt_minecarts.minecart, tag=!wt_minecarts.minecart_type.hopper] add wt_minecarts.minecart_type.hopper
execute at @a run tag @e[type=minecraft:spawner_minecart, tag=wt_minecarts.minecart, tag=!wt_minecarts.minecart_type.spawner] add wt_minecarts.minecart_type.spawner
execute at @a run tag @e[type=minecraft:tnt_minecart, tag=wt_minecarts.minecart, tag=!wt_minecarts.minecart_type.tnt] add wt_minecarts.minecart_type.tnt

	# Update markers
function wt_minecarts:update_markers

#endregion
