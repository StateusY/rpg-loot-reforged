
scoreboard players operation .id rpgc.temp = @s rpgc.id
execute as @e[type=armor_stand,tag=rpgloot.magnite_orbit] if score @s rpgloot.magnite_charge = .id rpgc.temp run function rpgloot:items/basic/magnite/armor/kill
scoreboard players reset @s rpgloot.magnite_count
scoreboard players reset @s rpgloot.magnite_charge
scoreboard players reset .id