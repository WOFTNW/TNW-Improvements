#> wt_signs:save_data
#
# Save the player's positioning to scoreboards.

#region
	# Save player's current position and rotation
execute store result score @s wt_signs.pos_x run data get entity @s Pos[0] 1000
execute store result score @s wt_signs.pos_y run data get entity @s Pos[1] 1000
execute store result score @s wt_signs.pos_z run data get entity @s Pos[2] 1000
execute store result score @s wt_signs.rot_x run data get entity @s Rotation[0] 1000
execute store result score @s wt_signs.rot_y run data get entity @s Rotation[1] 1000

	# Compare current and previous
execute if entity @s[tag=wt_signs.still] unless score @s wt_signs.pos_x = @s wt_signs.pos_dx run tag @s add wt_signs.moved
execute if entity @s[tag=wt_signs.still] unless score @s wt_signs.pos_y = @s wt_signs.pos_dy run tag @s add wt_signs.moved
execute if entity @s[tag=wt_signs.still] unless score @s wt_signs.pos_z = @s wt_signs.pos_dz run tag @s add wt_signs.moved
execute if entity @s[tag=wt_signs.still] unless score @s wt_signs.rot_x = @s wt_signs.rot_dx run tag @s add wt_signs.moved
execute if entity @s[tag=wt_signs.still] unless score @s wt_signs.rot_y = @s wt_signs.rot_dy run tag @s add wt_signs.moved

	# Save player's previous position and rotation
execute store result score @s wt_signs.pos_dx run scoreboard players get @s wt_signs.pos_x
execute store result score @s wt_signs.pos_dy run scoreboard players get @s wt_signs.pos_y
execute store result score @s wt_signs.pos_dz run scoreboard players get @s wt_signs.pos_z
execute store result score @s wt_signs.rot_dx run scoreboard players get @s wt_signs.rot_x
execute store result score @s wt_signs.rot_dy run scoreboard players get @s wt_signs.rot_y

#endregion
