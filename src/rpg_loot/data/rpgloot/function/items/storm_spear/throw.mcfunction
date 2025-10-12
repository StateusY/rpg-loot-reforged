scoreboard players reset .safe

attribute @s gravity modifier remove rpgloot:storm_spear
scoreboard players set .ray rpgloot.temp 250
execute if score @s rpgloot.storm_spear_charge matches 100.. run scoreboard players set .max rpgloot.storm_spear_charge 1
execute if score @s rpgloot.storm_spear_charge matches 10.. at @s anchored eyes positioned ^ ^ ^.1 run function rpgloot:items/storm_spear/throw/ray
execute if score @s rpgloot.storm_spear_charge matches 10.. run playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 2
execute if score @s rpgloot.storm_spear_charge matches ..4 run playsound block.respawn_anchor.deplete player @a ~ ~ ~ .25 0
scoreboard players reset @s rpgloot.storm_spear_charge