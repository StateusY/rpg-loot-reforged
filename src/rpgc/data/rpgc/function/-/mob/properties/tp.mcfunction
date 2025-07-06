scoreboard players operation .temp rpgc.id2 = @s rpgc.id2
execute on passengers run tag @s[type=text_display] add rpgc.display_tp
execute on passengers run scoreboard players operation @s[type=text_display] rpgc.id2 = .temp rpgc.id2
execute on passengers run ride @s[type=text_display] dismount