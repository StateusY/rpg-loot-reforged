
scoreboard players reset .splinter_dmg
execute store result score .splinter_dmg rpgloot.temp run function rpgc:z_api/attribute/get {id:"physical_dmg"}
scoreboard players operation .splinter_dmg rpgloot.temp *= #5 constant
execute as @n[tag=rpgc.current_victim] run function rpgloot:items/basic/wood/apply_splinter