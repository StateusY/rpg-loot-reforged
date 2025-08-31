tp @s ~ ~-9001 ~
say open
scoreboard players reset @s rpgloot.interact_with_smithing_table
scoreboard players reset @s rpgloot.crafter
tag @s add rpgloot.crafter_open
dialog show @s rpgloot:crafting/menu