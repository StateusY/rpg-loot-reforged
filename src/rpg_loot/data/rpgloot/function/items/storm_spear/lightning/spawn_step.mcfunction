execute store result storage rpgloot:temp lightning.strength int 0.5 run scoreboard players get @s rpgloot.storm_spear_charge

execute store result storage rpgloot:temp lightning.x double 0.1 run random value -10..10
execute store result storage rpgloot:temp lightning.y double 0.1 run random value -10..10
execute store result storage rpgloot:temp lightning.z double 0.1 run random value -10..10
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgloot.storm_spear_lightning","rpgloot.storm_spear_lightning_new"],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":air,"minecraft:enchantments":{"rpgloot:backend/items/storm_spear_lightning":1}}}}}
execute as @n[type=armor_stand,tag=rpgloot.storm_spear_lightning_new] at @s run function rpgloot:items/storm_spear/lightning/spawn with storage rpgloot:temp lightning