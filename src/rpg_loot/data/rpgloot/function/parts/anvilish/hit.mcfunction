# drop anvil on hit target

execute as @e[type=#rpgc:all,tag=rpgc.current_victim] at @s run summon falling_block ~ ~5 ~ {BlockState:{Name:"minecraft:anvil"},Time:1,Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Invisible:1b,equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:enchantments":{"rpgloot:backend/parts/anvilish":1}}}}}]}