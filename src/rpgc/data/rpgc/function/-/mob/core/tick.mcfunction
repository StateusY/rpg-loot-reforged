function rpgc:-/player/event/call {type:"tick"}
execute if entity @s[type=#rpgc:boss,tag=!rpgc.boss_dead] if score @s rpgc.hp matches 10.. run data merge entity @s {Health:9999f}
execute unless entity @s[tag=rpgc.invis] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:invisibility":{}}}} on passengers run data merge entity @s[type=text_display] {transformation:{scale:[0f,0f,0f]}}
execute unless entity @s[tag=rpgc.invis] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:invisibility":{}}}} run tag @s add rpgc.invis
execute if entity @s[tag=rpgc.invis] unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:invisibility":{}}}} on passengers run data merge entity @s[type=text_display] {transformation:{scale:[1f,1f,1f]}}
execute if entity @s[tag=rpgc.invis] unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:invisibility":{}}}} run tag @s remove rpgc.invis
execute if entity @s[type=#rpgc:tp] at @s run function rpgc:-/mob/core/tp
