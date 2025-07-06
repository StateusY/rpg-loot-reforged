
execute store result score @s rpgc.hp run data get storage rpgc:temp properties.hp 10
scoreboard players operation @s rpgc.max_hp = @s rpgc.hp
execute summon text_display run function rpgc:-/mob/properties/misc/bar
