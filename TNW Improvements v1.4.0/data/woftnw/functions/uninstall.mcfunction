#> woftnw:uninstall
#
# Uninstall TNW Improvements.

#region
	# Clear schedules
schedule clear wt_minecarts:check_minecart

	# Kill all markers
kill @e[type=marker, tag=wt_minecarts]

	# Disable datapack
datapack disable "file/TNW Improvements v1.3.0"

	# Announce successful uninstall
tellraw @a[tag=Admin] [{"text": "\n>> [", "color": "gray"}, {"text": "TNW Improvements", "color": "white"}, {"text": "]\n", "color": "gray"}, {"text": "TNW Improvements ", "color": "white"}, {"text": "has successfully uninstalled.", "color": "gray"}]

#endregion
