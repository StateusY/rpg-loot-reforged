
execute store result storage rpgc:temp numbers.x double 0.01 run random value -20..20
execute store result storage rpgc:temp numbers.y double 0.01 run random value 10..20
execute store result storage rpgc:temp numbers.z double 0.01 run random value -20..20
execute anchored eyes positioned ^ ^ ^ run summon item ~ ~ ~ {CustomNameVisible:0b,Age:5960,PickupDelay:32767,Invulnerable:1b,Tags:["rpgc.current_dmg_number"],Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"air"}}}
execute as @n[type=item,tag=rpgc.current_dmg_number] run function rpgc:z_core/combat/hit/calc_stage/dmg_numbers/number with storage rpgc:temp numbers