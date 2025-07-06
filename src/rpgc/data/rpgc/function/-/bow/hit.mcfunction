execute if entity @s[tag=rpgc.arrow_impact] run return fail
function rpgc:-/event/call {type:"hit",source:"entity @s HandItems[0].components.minecraft:custom_data"}

data modify storage rpgc:temp damage set from entity @s HandItems[0].components."minecraft:custom_data"
function rpgc:-/bow/check
data remove storage rpgc:temp damage

execute unless score .halt rpgc.temp matches 1 run kill @s
scoreboard players reset .halt rpgc.temp
