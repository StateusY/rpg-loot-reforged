execute if score @s rpgc.food <= #10 constant run return run function rpgc:-/player/regeneration/healed
execute if score @s rpgc.hp >= @s rpgc.max_hp run return run function rpgc:-/player/regeneration/healed
execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"effects":{"minecraft:hunger":{}}}} run effect give @s hunger infinite 29 true
scoreboard players operation .temp rpgc.temp = @s rpgc.regen
scoreboard players operation .temp rpgc.temp /= #4 constant
scoreboard players operation @s rpgc.hp += .temp rpgc.temp

# Player hud update
execute if entity @s[type=player] run function rpgc:-/player/hud/update
