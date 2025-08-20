
execute store result score @s rpgc.hp store result score @s rpgc.max_hp run function rpgc:z_api/attribute/get {id:max_hp}
execute if score @s rpgc.hp > @s rpgc.max_hp run scoreboard players operation @s rpgc.hp = @s rpgc.max_hp