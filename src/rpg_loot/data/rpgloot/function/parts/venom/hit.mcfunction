
execute store result storage rpgloot:temp venom.dmg double 0.025 run function rpgc:z_api/attribute/get {id:"physical_dmg"}
execute as @e[type=#rpgc:all,tag=rpgc.current_victim] at @s run function rpgloot:parts/infernal/engulf with storage rpgloot:temp infernal