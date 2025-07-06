execute if score @s rpgc.hp > @s rpgc.max_hp run scoreboard players operation @s rpgc.hp = @s rpgc.max_hp
execute if score @s rpgc.temp matches 0 if score @s rpgc.regen_delay matches 0 run scoreboard players set @s rpgc.regen_delay -1
effect clear @s hunger
