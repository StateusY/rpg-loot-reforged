execute store result storage rpgloot:temp shade.damage double 0.01 run function rpgc:z_api/attribute/get {id:wither_dmg}
function gu:generate
summon item_display ~ ~ ~ {start_interpolation:0,interpolation_duration:0,teleport_duration:1,Tags:["rpgloot.shade"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgloot.shade_brain"],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpg_loot:backend/items/shadow_crown_shade":1}}}}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:tinted_glass",count:1,components:{"minecraft:item_model":"rpgloot:shade"}}}
data modify entity @n[type=item_display,tag=rpgloot.shade] data.owner set from storage gu:main out
data modify entity @n[type=item_display,tag=rpgloot.shade] data.damage set from storage rpgloot:temp shade.damage
execute store result entity @n[type=item_display,tag=rpgloot.shade] data.speed double 0.01 run random value 25..100
scoreboard players add @s rpgloot.shade_count 1
scoreboard players reset @s rpgloot.shade_timer
