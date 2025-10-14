
execute if entity @s[type=#rpgc:boss] run execute store result entity @s Health double 0.01 run scoreboard players get @s rpgc.hp
function rpgc:z_api/event/call {event:slow_tick}

execute if score @s rpgc.fall matches 1.. if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_on_ground":true}}} run function rpgc:z_core/mob/core/fall/land
execute if entity @s[nbt={TicksFrozen:140}] run function rpgc:z_api/damage {target:"@s",damage:[{type:"cold",value:1}]}
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:poison":{}}}} unless score @s rpgc.hp matches ..50 run function rpgc:z_api/damage {target:"@s",damage:[{type:"magic",value:1}]}
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:wither":{}}}} run function rpgc:z_api/damage {target:"@s",damage:[{type:"wither",value:1}]}
execute if entity @s[type=wither_skeleton] run return fail
execute unless entity @s[nbt={Fire:0s}] unless entity @s[nbt={Fire:-1s}] run function rpgc:z_api/damage {target:"@s",damage:[{type:"fire",value:1}]}
