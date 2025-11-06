scoreboard players operation @s rpgc.hp = @s rpgc.max_hp
scoreboard players operation @s rpgc.hp /= #2 constant
function rpgc:z_core/player/updates/config with storage rpgc:config
function rpgc:z_core/player/updates/hp
scoreboard players reset @s died