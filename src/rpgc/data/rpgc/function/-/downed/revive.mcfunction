tag @s add rpgc.reviving
execute if predicate {"condition": "minecraft:random_chance","chance": 0.25} run particle heart ~ ~.5 ~ 0.3 0.3 0.3 0.1 1 force
scoreboard players add @s rpgc.reviving 1
execute if score @s rpgc.reviving >= #config rpgc.reviving run function rpgc:-/downed/respawn
