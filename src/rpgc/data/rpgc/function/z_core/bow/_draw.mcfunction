$execute store result storage rpgc:temp draw_percent double $(draw_speed) run data get storage rpgc:temp draw_percent
execute store result score @s rpgc.draw_percent run data get storage rpgc:temp draw_percent
data remove storage rpgc:temp draw_percent
data remove storage rpgc:temp draw_speed