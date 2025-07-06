#> from: rpgc:-/downed/death

tag @s remove rpgc.downed
attribute @s minecraft:entity_interaction_range base set 2.5
gamemode survival
title @s clear
kill @s
scoreboard players operation @s rpgc.hp = @s rpgc.max_hp
function rpgc:-/player/hud/update
