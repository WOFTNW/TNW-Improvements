#> wt_signs:raycast/loop
#
# Loop raycast.

#region
	# Tellraw
# tellraw @s "raycast loop"

	# Particle debug
# particle flame ~ ~ ~ 0 0 0 0 1

	# Find block
execute if score #wt_signs.stop wt_signs.raycast matches 0 if block ~ ~ ~ #minecraft:all_signs{is_waxed: 0b} run function wt_signs:raycast/wax_on

	# Loop if not found
scoreboard players remove #wt_signs.max wt_signs.raycast 1
execute if score #wt_signs.stop wt_signs.raycast matches 0 if score #wt_signs.max wt_signs.raycast matches 1.. positioned ^ ^ ^0.05 run function wt_signs:raycast/loop

#endregion
