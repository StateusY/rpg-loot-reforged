
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..75] ~ ~ ~ 1 2 0.5
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..75] ~ ~ ~ 1 1.8 0.5
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..75] ~ ~ ~ 1 1.6 0.5
particle dust_pillar{block_state:iron_block} ~ ~ ~ 3 0 3 3 250 force
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 light[level=15] replace #replaceable
particle flash ~ ~5 ~ 5 5 5 0 25 force
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgloot.storm_spear_crater"],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{item_model:air,"minecraft:enchantments":{"rpgloot:backend/items/storm_spear_crater":1}}}}}
execute align xyz positioned ~.5 ~.5 ~.5 run function rpgloot:items/storm_spear/impact/blocks
execute as @e[type=block_display,distance=..5,tag=rpgloot.storm_spear_block_new] run function rpgloot:items/storm_spear/impact/shatter