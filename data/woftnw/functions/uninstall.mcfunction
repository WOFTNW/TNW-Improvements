#> woftnw:uninstall
#
# Uninstall TNW Improvements.

#region
	# Clear schedules
# schedule clear wt_minecarts:check_minecart

	# Kill all markers
# kill @e[type=marker, tag=wt_minecarts]

	# Remove Signs branch
function wt_signs:uninstall

	# Remove main branch
function woftnw:load/del/scbds

	# Disable datapack
datapack disable "file/TNW Improvements v1.7.0"

	# Announce successful uninstall
tellraw @a[tag=Admin] [{"text": "\n>> [", "color": "gray"}, {"text": "TNW Improvements", "color": "white"}, {"text": "]\n", "color": "gray"}, {"text": "TNW Improvements ", "color": "white"}, {"text": "and all of its branches have successfully uninstalled.", "color": "gray"}]

#endregion
