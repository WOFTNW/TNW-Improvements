#> wt_minecarts:drop_block
#
# Add in the extra block to minecart drops.

#region
	# Summon correct item
		## Block
execute if entity @s[tag=wt_minecarts.minecart_type.chest] run summon item ~ ~ ~ {Item: {id: "minecraft:chest", Count: 1b}, Tags: ["wt_minecarts.new_item", "wt_minecarts.chest_item"]}
execute if entity @s[tag=wt_minecarts.minecart_type.command] run summon item ~ ~ ~ {Item: {id: "minecraft:command_block", Count: 1b}, Tags: ["wt_minecarts.new_item", "wt_minecarts.command_item"]}
execute if entity @s[tag=wt_minecarts.minecart_type.furnace] run summon item ~ ~ ~ {Item: {id: "minecraft:furnace", Count: 1b}, Tags: ["wt_minecarts.new_item", "wt_minecarts.furnace_item"]}
execute if entity @s[tag=wt_minecarts.minecart_type.hopper] run summon item ~ ~ ~ {Item: {id: "minecraft:hopper", Count: 1b}, Tags: ["wt_minecarts.new_item", "wt_minecarts.hopper_item"]}
execute if entity @s[tag=wt_minecarts.minecart_type.spawner] run summon item ~ ~ ~ {Item: {id: "minecraft:spawner", Count: 1b}, Tags: ["wt_minecarts.new_item", "wt_minecarts.spawner_item"]}
execute if entity @s[tag=wt_minecarts.minecart_type.tnt] run summon item ~ ~ ~ {Item: {id: "minecraft:tnt", Count: 1b}, Tags: ["wt_minecarts.new_item", "wt_minecarts.tnt_item"]}
		## Minecart
summon item ~ ~ ~ {Item: {id: "minecraft:minecart", Count: 1b}}

	# Paste in data
data modify entity @e[type=minecraft:item, tag=wt_minecarts.new_item, limit=1, sort=nearest, distance=..1] Item.tag.BlockEntityTag set from entity @s data.wt_minecarts

	# Kill combined minecart item
kill @e[type=minecraft:item, predicate=wt_minecarts:minecart_item, limit=1, sort=nearest, distance=..1]

#endregion
