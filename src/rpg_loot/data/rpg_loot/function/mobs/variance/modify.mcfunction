$execute store result storage rpgloot:temp variance.hp double $(scale) run scoreboard players get @s rpgc.max_hp
$attribute @s minecraft:scale base set $(scale)
execute store result score @s rpgc.max_hp run data get storage rpgloot:temp variance.hp 1
execute store result score @s rpgc.hp run data get storage rpgloot:temp variance.hp 1
function rpgc:-/mob/display/bar