execute store result storage rpgloot:temp crafter.path int 1 run scoreboard players operation @s rpgloot.crafter -= #1000 constant
function rpgloot:station/crafter/path with storage rpgloot:temp crafter
scoreboard players reset @s rpgloot.crafter
data remove storage rpgloot:temp crafter