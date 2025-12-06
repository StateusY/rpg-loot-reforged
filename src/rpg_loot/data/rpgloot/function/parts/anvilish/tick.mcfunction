execute on vehicle if entity @s run return fail

function rpgc:z_api/fetch_damage/get
execute store result storage rpgloot:temp anvilish.damage double 0.005 run scoreboard players get .dmg_out rpgc.temp

execute as @e[type=#rpgc:all,distance=..15,tag=rpgloot.anvilish_target] run function rpgloot:parts/anvilish/damage with storage rpgloot:temp anvilish