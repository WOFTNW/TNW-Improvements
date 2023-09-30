#> wt_minecarts:copy_data/spawner
#
# Copy data from spawner minecarts.

#region
	# Spawner minecart data
data modify entity @s data.wt_minecarts.SpawnCount set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] SpawnCount
data modify entity @s data.wt_minecarts.SpawnData set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] SpawnData
data modify entity @s data.wt_minecarts.SpawnPotentials set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] SpawnPotentials
data modify entity @s data.wt_minecarts.SpawnRange set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] SpawnRange
data modify entity @s data.wt_minecarts.MinSpawnDelay set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] MinSpawnDelay
data modify entity @s data.wt_minecarts.MaxSpawnDelay set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] MaxSpawnDelay
data modify entity @s data.wt_minecarts.MaxNearbyEntities set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] MaxNearbyEntities
data modify entity @s data.wt_minecarts.RequiredPlayerRange set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] RequiredPlayerRange
data modify entity @s data.wt_minecarts.Delay set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] Delay
data modify entity @s data.wt_minecarts.CustomName set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] CustomName

	# Update tags
data modify entity @s Tags set from entity @e[type=minecraft:spawner_minecart, limit=1, sort=nearest] Tags
tag @s remove wt_minecarts.minecart
tag @s add wt_minecarts.minecart_location
tag @s add wt_minecarts

#endregion
