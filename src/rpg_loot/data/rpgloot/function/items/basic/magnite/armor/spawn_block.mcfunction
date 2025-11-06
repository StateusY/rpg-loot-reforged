scoreboard players add @s rpgloot.magnite_count 1
scoreboard players reset @s rpgloot.magnite_charge
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgloot.magnite_orbit","rpgloot.magnite_orbit_new"],Passengers:[{id:"minecraft:block_display",start_interpolation:0,interpolation_duration:1,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.25f,.75f,2f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:barrier"}}],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgloot:backend/items/magnite_orbit":1}}}}}
execute store result score .id rpgloot.temp run scoreboard players get @s rpgc.id
execute as @n[type=armor_stand,tag=rpgloot.magnite_orbit_new] at @s run function rpgloot:items/basic/magnite/armor/modify
