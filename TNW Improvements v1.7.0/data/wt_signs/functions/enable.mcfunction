#> wt_signs:enable
#
# Enable Signs branch scoreboards for all players.

#region
	# Enable scoreboards
scoreboard players enable @a[scores={wt_signs.msg=0}] wt_signs.msg

	# Set all integer-valid scores to 1
execute as @a unless score @s wt_signs.msg matches 0 run scoreboard players set @s wt_signs.msg 1

	# Loop
schedule function wt_signs:enable 5s

#endregion
