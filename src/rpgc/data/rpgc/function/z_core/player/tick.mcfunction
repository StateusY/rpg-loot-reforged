#> from: rpgc:-/tick
# execute if score @s rpgc.click_cd matches 1.. run scoreboard players remove @s rpgc.click_cd 1
# execute unless score @s rpgc.joined matches 1 run function rpgc:-/player/join

# execute unless predicate {"condition": "minecraft:entity_properties","entity": "this","predicate": {"effects": {"minecraft:resistance": {}}}} run effect give @s resistance infinite 255 true
# execute if entity @s[tag=rpgc.changed_mainhand] run say complie mainhand
# execute if entity @s[tag=rpgc.changed_mainhand] run tag @s remove rpgc.changed_mainhand

# execute if entity @s[tag=rpgc.changed_offhand] run say complie offhand
# execute if entity @s[tag=rpgc.changed_offhand] run tag @s remove rpgc.changed_offhand

# function rpgc:z_core/player/atk_cd/tick



# #regeneration stuff
# execute if score @s rpgc.regen_delay matches 1.. run scoreboard players remove @s rpgc.regen_delay 1


# #execute store result score @s rpgc.digit1 store result score @s rpgc.digit2 run scoreboard players get @s rpgc.hp
# #scoreboard players operation @s rpgc.digit1 /= #10 constant
# #scoreboard players operation @s rpgc.digit2 %= #10 constant
# #
# #title @s[tag=!rpgc.downed] actionbar [{"color":"red","score":{"name":"@s","objective":"rpgc.digit1"}},".",{"score":{"name":"@s","objective":"rpgc.digit2"}},"❤"]

# detect if bow is fired

execute if score @s rpgc.shot_arrow matches 1.. run function rpgc:z_core/bow/reset

# ##current Project
# execute if entity @s[tag=rpgc.update] run function rpgc:-/player/compile

# execute if entity @s[tag=rpgc.player_shot] run tag @s remove rpgc.player_shot
# #data remove storage rpgc:data current
