scoreboard players add @s rpgloot.titanium_timer 1
execute rotated ~ 0 run function rpgloot:items/basic/titanium/armor/particles/random
execute rotated ~ 0 run function rpgloot:items/basic/titanium/armor/particles/random
execute rotated ~ 0 run function rpgloot:items/basic/titanium/armor/particles/random

execute positioned ~ ~ ~ align y run function rpgloot:util/shatter_block

particle small_gust ~ ~1 ~ .5 .5 .5 0 2 normal
execute unless score @s rpgloot.titanium_timer matches 2.. run return fail
tag @s add rpgloot.titanium_current
scoreboard players add @s rpgloot.titanium_image 1
execute if score @s rpgloot.titanium_image matches 5.. run scoreboard players set @s rpgloot.titanium_image 1
execute store result storage rpgloot:temp titanium.image int 1 run scoreboard players get @s rpgloot.titanium_image
summon armor_stand ~ ~.5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["rpgloot.titanium_image"],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:tinted_glass",count:1,components:{"minecraft:item_model":"air"}}}],equipment:{mainhand:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"air","minecraft:enchantments":{"rpgloot:backend/ttk":1}}}}}
execute as @n[type=armor_stand,tag=rpgloot.titanium_image] at @s run function rpgloot:items/basic/titanium/armor/image with storage rpgloot:temp titanium
scoreboard players set @s rpgloot.titanium_timer 0
tag @s remove rpgloot.titanium_current
data remove storage rpgloot:temp titanium