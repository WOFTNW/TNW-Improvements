#> wt_signs:load/gen/scbds
#
# Generate scoreboards for Signs branch.

#region
	# Generate scoreboards
#define objective wt_signs.msg Trigger scoreboard that disables info message on activation.
scoreboard objectives add wt_signs.msg trigger
scoreboard players enable @a wt_signs.msg

#define objective wt_signs.raycast Holds values for raycast.
scoreboard objectives add wt_signs.raycast dummy

		## Position scoreboards
#define objective wt_signs.pos_x Holds position-based x values.
#define objective wt_signs.pos_y Holds position-based y values.
#define objective wt_signs.pos_z Holds position-based z values.
#define objective wt_signs.pos_dx Holds position-based delta-x values.
#define objective wt_signs.pos_dy Holds position-based delta-y values.
#define objective wt_signs.pos_dz Holds position-based delta-z values.
scoreboard objectives add wt_signs.pos_x dummy
scoreboard objectives add wt_signs.pos_y dummy
scoreboard objectives add wt_signs.pos_z dummy
scoreboard objectives add wt_signs.pos_dx dummy
scoreboard objectives add wt_signs.pos_dy dummy
scoreboard objectives add wt_signs.pos_dz dummy

		## Rotation scoreboards
#define objective wt_signs.rot_x Holds rotation-based x values.
#define objective wt_signs.rot_y Holds rotation-based y values.
#define objective wt_signs.rot_dx Holds rotation-based delta-x values.
#define objective wt_signs.rot_dy Holds rotation-based delta-y values.
scoreboard objectives add wt_signs.rot_x dummy
scoreboard objectives add wt_signs.rot_y dummy
scoreboard objectives add wt_signs.rot_dx dummy
scoreboard objectives add wt_signs.rot_dy dummy

	# Variables
#define score_holder $wt_signs.max Defines the farthest a raycast can travel before stopping.
execute unless score $wt_signs.max wt_signs.raycast = $wt_signs.max wt_signs.raycast run scoreboard players set $wt_signs.max wt_signs.raycast 100

#endregion
