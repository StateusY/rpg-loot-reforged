tag @s add rpgc.current
scoreboard players operation .temp rpgc.id2 = @s rpgc.id2
execute anchored eyes positioned ^ ^ ^ as @e[type=text_display,tag=rpgc.hp_display] if score @s rpgc.id2 = .temp rpgc.id2 run tp @s ~ ~.125 ~
tag @s remove rpgc.current