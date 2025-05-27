#> wt_signs:info
#
# Inform player on how to auto-wax signs.

#region
	# Tellraw message
execute if score @s wt_signs.msg matches 0 run tellraw @s [{"text": "\nSign is not waxed! To automatically wax a sign on placement, place a sign without holding ", "color": "dark_aqua"}, {"keybind": "key.sneak", "color": "aqua"}, {"text":".\n\nClick "}, {"text": "here", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger wt_signs.msg"}}, {"text": " to stop showing this message."}]

	# Reset advancement
advancement revoke @s only wt_signs:placed_sign_shift

#endregion
