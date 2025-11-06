
scoreboard players reset .splinter_dmg
execute store result score .splinter_dmg rpgloot.temp run function rpgc:z_api/attribute/get {id:"physical_dmg"}
execute store result score .splinter_mult rpgloot.temp run function rpgc:z_api/attribute/get {id:"dmg_mult"}
tellraw @a {"score":{"name":".splinter_dmg","objective":"rpgloot.temp"}}
scoreboard players operation .splinter_dmg rpgloot.temp *= .splinter_mult rpgloot.temp
tellraw @a {"score":{"name":".splinter_dmg","objective":"rpgloot.temp"}}
scoreboard players operation .splinter_dmg rpgloot.temp /= #100 constant
tellraw @a {"score":{"name":".splinter_dmg","objective":"rpgloot.temp"}}
scoreboard players operation .splinter_dmg rpgloot.temp *= #5 constant
execute as @e[type=#rpgc:all,tag=rpgc.current_victim] run function rpgloot:items/basic/wood/apply_splinter