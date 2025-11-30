#> woftnw:uninstall
#
# Uninstall TNW Improvements.

#region
    # Disable datapack
datapack disable "file/TNW Improvements"

    # Announce successful uninstall
tellraw @a[tag=Admin] [{"text": "\n>> [", "color": "gray"}, {"text": "TNW Improvements", "color": "white"}, {"text": "]\n", "color": "gray"}, {"text": "TNW Improvements ", "color": "white"}, {"text": "and all of its branches have successfully uninstalled.", "color": "gray"}]

#endregion
