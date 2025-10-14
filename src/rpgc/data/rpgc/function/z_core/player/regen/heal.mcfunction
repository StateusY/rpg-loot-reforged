execute if score @s rpgc.hp >= @s rpgc.max_hp run return fail
execute store result score .heal rpgc.temp run function rpgc:z_api/attribute/get {id:"regen_amount"}
execute unless score .heal rpgc.temp matches 1.. run return fail
execute if score @s rpgc.saturation matches 1.. run effect give @s minecraft:hunger 1 100 true
execute unless score @s rpgc.saturation matches 1.. run effect give @s minecraft:hunger 1 25 true
scoreboard players operation .heal rpgc.temp /= #4 constant
scoreboard players operation @s rpgc.hp += .heal rpgc.temp
execute if score @s rpgc.hp > @s rpgc.max_hp run scoreboard players operation @s rpgc.hp = @s rpgc.max_hp
function rpgc:z_core/player/hud/update
scoreboard players reset .heal