
$execute store result score .temp1 rpgc.$(type)_armor run data get entity @s ArmorItems[0].components.minecraft:custom_data.armor[{type:"$(type)"}].amount 10
$execute store result score .temp2 rpgc.$(type)_armor run data get entity @s ArmorItems[1].components.minecraft:custom_data.armor[{type:"$(type)"}].amount 10
$execute store result score .temp3 rpgc.$(type)_armor run data get entity @s ArmorItems[2].components.minecraft:custom_data.armor[{type:"$(type)"}].amount 10
$execute store result score .temp4 rpgc.$(type)_armor run data get entity @s ArmorItems[3].components.minecraft:custom_data.armor[{type:"$(type)"}].amount 10

$scoreboard players operation .temp1 rpgc.$(type)_armor += .temp2 rpgc.$(type)_armor
$scoreboard players operation .temp3 rpgc.$(type)_armor += .temp4 rpgc.$(type)_armor
$execute store result score .total rpgc.temp run scoreboard players operation .temp1 rpgc.$(type)_armor += .temp3 rpgc.$(type)_armor
scoreboard players reset .temp1
scoreboard players reset .temp2
scoreboard players reset .temp3
scoreboard players reset .temp4