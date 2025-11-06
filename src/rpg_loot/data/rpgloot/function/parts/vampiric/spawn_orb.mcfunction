
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgloot.vampiric_orb_spawn"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgloot:backend/parts/vampiric":1}}}}}
execute store result entity @n[type=armor_stand,tag=rpgloot.vampiric_orb_spawn] data.id int 1 run scoreboard players get @s rpgc.id
execute store result storage rpgloot:temp orb.x double 3 run random value -60..60
execute store result storage rpgloot:temp orb.y double 3 run random value -10..10
execute as @n[type=armor_stand,tag=rpgloot.vampiric_orb_spawn] at @s run function rpgloot:parts/vampiric/rotate with storage rpgloot:temp orb
