execute if score @s rpgc.fall matches 1.. if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"flags":{"is_on_ground":true}}} run function rpgc:-/mob/fall/land
execute if entity @s[nbt={TicksFrozen:140}] run function rpgc:damage {damage:[{type:'cold',amount:.1}]}
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:poison":{}}}} unless score @s rpgc.hp matches ..5 run function rpgc:damage {damage:[{type:'magic',amount:1}]}
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:wither":{}}}} run function rpgc:damage {damage:[{type:'wither',amount:2}]}
# does not work????
#execute if predicate {"condition": "minecraft:damage_source_properties","predicate": {"source_entity": {"type": "minecraft:warden","distance": {"horizontal": {"min": 3}}}}} run say boom!
execute if entity @s[type=wither_skeleton] run return fail
execute unless entity @s[nbt={Fire:0s}] unless entity @s[nbt={Fire:-1s}] run function rpgc:damage {damage:[{type:'fire',amount:1}]}
