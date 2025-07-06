tag @s add rpgc.arrow_impact

function rpgc:-/event/call {type:"impact",source:"entity @s HandItems[0].components.minecraft:custom_data"}

execute unless score .halt rpgc.temp matches 1 run kill @s
scoreboard players reset .halt rpgc.temp