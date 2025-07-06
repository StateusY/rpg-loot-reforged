execute on vehicle run function rpgc:-/downed/clear
scoreboard players operation #temp rpgc.max_hp = @s rpgc.max_hp
execute store result score @s rpgc.hp run scoreboard players operation #temp rpgc.max_hp /= #2 constant
scoreboard players reset #temp
scoreboard players reset @s rpgc.reviving
tag @s remove rpgc.downed
tag @s remove rpgc.reviving
attribute @s minecraft:entity_interaction_range modifier remove downed
gamemode survival
title @s clear
function rpgc:-/player/hud/update
