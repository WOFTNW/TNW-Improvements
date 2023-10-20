#> wt_signs:check_movement
#
# Check for player movement.

#region
	# Debug
# tellraw @a ["Checking for movement from ", {"selector":"@a[tag=wt_signs.still]"}, "..."]

	# Initialise
execute store result score @s wt_signs.pos_x store result score @s wt_signs.pos_dx run data get entity @s Pos[0] 1000
execute store result score @s wt_signs.pos_y store result score @s wt_signs.pos_dy run data get entity @s Pos[1] 1000
execute store result score @s wt_signs.pos_z store result score @s wt_signs.pos_dz run data get entity @s Pos[2] 1000
execute store result score @s wt_signs.rot_x store result score @s wt_signs.rot_dx run data get entity @s Rotation[0] 1000
execute store result score @s wt_signs.rot_y store result score @s wt_signs.rot_dy run data get entity @s Rotation[1] 1000

	# Save player's positioning
execute as @a[tag=wt_signs.still] run function wt_signs:save_data

	# Move event
execute as @a[tag=wt_signs.moved] run function wt_signs:moved

	# Loop
execute if entity @a[tag=wt_signs.still] run schedule function wt_signs:check_movement 1t

#endregion
