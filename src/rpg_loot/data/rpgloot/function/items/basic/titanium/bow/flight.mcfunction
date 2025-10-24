scoreboard players add @s rpgloot.titanium_bow 1

execute if score @s rpgloot.titanium_bow matches 13 facing ^ ^ ^1 run function rpgloot:items/basic/titanium/bow/ring
execute if score @s rpgloot.titanium_bow matches 13 facing ^ ^ ^-1 run function rpgloot:items/basic/titanium/bow/ring
execute if score @s rpgloot.titanium_bow matches 16 facing ^ ^ ^1 run function rpgloot:items/basic/titanium/bow/ring
execute if score @s rpgloot.titanium_bow matches 16 facing ^ ^ ^-1 run function rpgloot:items/basic/titanium/bow/ring
execute if score @s rpgloot.titanium_bow matches 17 facing ^ ^ ^1 run function rpgloot:items/basic/titanium/bow/ring
execute if score @s rpgloot.titanium_bow matches 17 facing ^ ^ ^-1 run function rpgloot:items/basic/titanium/bow/ring
execute unless score @s rpgloot.titanium_bow matches 14 run return fail
function rpgc:z_api/attribute/modifier/add {source:bow,id:dmg_mult,name:titanium_bow_boost,type:mul,value:.5}
execute on vehicle store result entity @s Motion[0] double 0.005 run data get entity @s Motion[0] 1000
execute on vehicle store result entity @s Motion[1] double 0.0025 run data get entity @s Motion[1] 1000
execute on vehicle store result entity @s Motion[2] double 0.005 run data get entity @s Motion[2] 1000
