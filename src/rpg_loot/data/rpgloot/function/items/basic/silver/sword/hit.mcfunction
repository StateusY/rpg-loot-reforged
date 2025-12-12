execute as @e[type=#rpgc:all,tag=rpgc.current_victim,distance=..7] at @s anchored eyes positioned ^ ^ ^ run particle snowflake ~ ~ ~ 0 0 0 0.1 15 normal
execute store result score .frost rpgloot.temp run function rpgc:z_api/fetch_damage/get
scoreboard players operation @s rpgloot.silver_frostbite += .frost rpgloot.temp

execute store result score @s rpgloot.silver_max_frostbite run scoreboard players get @s rpgc.max_hp
scoreboard players operation @s rpgloot.silver_max_frostbite *= #6 constant

execute if score @s rpgloot.silver_frostbite > @s rpgloot.silver_max_frostbite run scoreboard players operation @s rpgloot.silver_frostbite = @s rpgloot.silver_max_frostbite
execute store result storage rpgloot:temp silver.frost int 0.0004 run scoreboard players get @s rpgloot.silver_max_frostbite
execute store result score @s rpgloot.silver_frostbite_decay run data get storage rpgloot:temp silver.frost
execute if score @s rpgloot.silver_frostbite_decay matches 0 run scoreboard players set @s rpgloot.silver_frostbite_decay 1
data remove storage rpgloot:temp silver