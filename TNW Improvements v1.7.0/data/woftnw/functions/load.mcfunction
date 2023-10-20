#> woftnw:load
#
# Initialise TNW Improvements.

#region
	# WOFTNW: Main Branch
function woftnw:load/gen/scbds

	# WOFTNW: Minecarts Branch
		## Clear schedules
#schedule clear wt_minecarts:check_minecart
		## Launch schedules
#function wt_minecarts:check_minecart

	# WOFTNW: Dragonflame Cactus Branch
#function wt_cactus:load/gen/scbds

	# WOFTNW: Signs Branch
function wt_signs:load/gen/scbds
		# Clear schedules
schedule clear wt_signs:enable
		# Launch schedules
function wt_signs:enable

	# Announce successful load
function woftnw:load/hw

#endregion
