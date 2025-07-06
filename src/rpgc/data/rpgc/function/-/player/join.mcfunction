scoreboard players set @s rpgc.joined 1
tellraw @a [{"selector":"@s","separator":" "},{"color":"white","text":" Has Joined The Game!"}]
execute unless score @s rpgc.id matches 0.. run scoreboard players add .id rpgc.id 1
execute unless score @s rpgc.id matches 0.. run scoreboard players operation @s rpgc.id = .id rpgc.id
execute store result storage rpgc:uuid id int 1 run scoreboard players get @s rpgc.id
scoreboard players operation @s rpgc.hp = #config rpgc.max_hp
scoreboard players operation @s rpgc.max_hp = #config rpgc.max_hp
scoreboard players operation @s rpgc.regen = #config rpgc.regen
scoreboard players operation @s rpgc.regen_delay = #config rpgc.regen_delay
function rpgc:-/uuid/generate
function rpgc:-/player/storage/init with entity @s
function rpgc:-/player/hud/init with storage rpgc:uuid


data remove storage rpgc:temp a
data remove storage rpgc:temp b
data remove storage rpgc:temp c
data remove storage rpgc:temp d
data remove storage rpgc:temp e
data remove storage rpgc:temp f
data remove storage rpgc:temp 0
data remove storage rpgc:temp 1
data remove storage rpgc:temp 2
data remove storage rpgc:temp 3
data remove storage rpgc:temp 4
data remove storage rpgc:temp 5
data remove storage rpgc:temp 6
data remove storage rpgc:temp 7
data remove storage rpgc:temp 8
data remove storage rpgc:temp 9
