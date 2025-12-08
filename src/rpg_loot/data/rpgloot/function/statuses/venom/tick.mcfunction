execute unless score @s rpgloot.venom_dur matches 1.. run return run function rpgloot:statuses/venom/clear
scoreboard players remove @s rpgloot.venom_dur 1
execute store result storage rpgloot:temp venom.apply double 0.001 run scoreboard players get @s rpgloot.venom_dmg
function rpgloot:statuses/venom/damage with storage rpgloot:temp venom
data remove storage rpgloot:temp venom