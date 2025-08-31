data modify storage rpgc:temp hud.hearts set value []
data modify storage rpgc:temp hud.hp set value [0,0]

# Get hp
scoreboard players set hearts rpgc.temp 10
scoreboard players operation hp rpgc.temp = @s rpgc.hp
scoreboard players operation hp rpgc.temp /= #100 constant

# Get color and wrap to 4 but then also scale it by 2
scoreboard players operation color rpgc.temp = hp rpgc.temp
scoreboard players operation color rpgc.temp /= #20 constant
scoreboard players operation color rpgc.temp %= #4 constant
scoreboard players operation color rpgc.temp *= #2 constant

# Also make color not 0 when hp isn't 0
execute if score color rpgc.temp matches 0 if score hp rpgc.temp matches 20.. run scoreboard players set color rpgc.temp 8

# Wrap hp to 20
scoreboard players operation hp rpgc.temp %= #20 constant

function rpgc:z_core/player/hud/hp/heart

# Hp number
scoreboard players operation hp rpgc.temp = @s rpgc.hp
scoreboard players operation hp rpgc.temp %= #100 constant
execute store result storage rpgc:temp hud.hp[0] int 0.01 run scoreboard players get @s rpgc.hp
execute store result storage rpgc:temp hud.hp[1] int 1 run scoreboard players get hp rpgc.temp

function rpgc:z_core/player/hud/hp/apply with storage rpgc:temp hud

