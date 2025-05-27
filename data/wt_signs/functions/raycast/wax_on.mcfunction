#> wt_signs:raycast/wax_on
#
# Sign has been found and waxification may begin.

#region
	# Stop raycast
function wt_signs:raycast/stop

	# Remove advancement
advancement revoke @s only wt_signs:placed_sign

	# Wax sign
data merge block ~ ~ ~ {is_waxed: 1b}

	# Play wax particles
execute align xyz run particle wax_on ~0.5 ~0.5 ~0.5 0.2 0.2 0.2 1 10 normal @a[distance=..64]

	# Tellraw message
execute if score @s wt_signs.msg matches 0 run tellraw @s [{"text": "\nSign automatically waxed! To prevent a sign from waxing automatically, place a sign while holding ", "color": "dark_aqua"}, {"keybind": "key.sneak", "color": "aqua"}, {"text":".\n\nClick "}, {"text": "here", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger wt_signs.msg"}}, {"text": " to stop showing this message."}]

#endregion
