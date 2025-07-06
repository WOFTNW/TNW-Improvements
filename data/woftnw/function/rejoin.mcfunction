#> woftnw:rejoin
#
# Run functions when a player rejoins the server.

#region
	# Rejoin functions
function #woftnw:rejoin

	# Reset
advancement revoke @s only woftnw:rejoin
scoreboard players set @s woftnw.leave 0

#endregion
