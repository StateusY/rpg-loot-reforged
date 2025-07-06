$execute store result storage rpgc:temp bow.raw_damage[0].amount double $(draw_dmg) run data get storage rpgc:temp bow.raw_damage[0].amount
data modify storage rpgc:temp bow.damage append from storage rpgc:temp bow.raw_damage[0]
data remove storage rpgc:temp bow.raw_damage[0]
execute if data storage rpgc:temp bow.raw_damage[0] run function rpgc:-/bow/scale_damage with storage rpgc:temp bow
