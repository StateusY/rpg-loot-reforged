summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b, Tags:["rpgloot.silver_impact_spike","rpgloot.silver_impact_spike_new"],Passengers:[{id:"minecraft:item_display",start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.5f],scale:[1f,1f,0f]},item:{id:"minecraft:packed_ice",count:1}}],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgloot:backend/items/silver_bow_impact_spike":1}}}}}

execute as @n[type=armor_stand, tag=rpgloot.silver_impact_spike_new] run function rpgloot:items/basic/silver/bow/impact/modify

