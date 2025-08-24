tag @s add rpgloot.splintered
execute store result storage rpgloot:temp splinter.dmg double 0.000025 run scoreboard players get @s rpgloot.splinter_dmg
function rpgloot:statuses/splinter/damage with storage rpgloot:temp splinter
scoreboard players remove @s rpgloot.splinter_timer 1
execute unless score @s rpgloot.splinter_timer matches ..0 run return fail
function rpgc:z_api/event/remove_by_name {name:"splintered"}
scoreboard players reset @s rpgloot.splinter_dmg
scoreboard players reset @s rpgloot.splinter_timer
tag @s remove rpgloot.splintered