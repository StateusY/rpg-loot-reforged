
execute unless score @s rpgloot.twinstep_cooldown matches 1.. if entity @s[tag=rpgloot.twinstep_dash1_end,tag=!rpgloot.twinstep_dash2] run function rpgloot:items/twinstep/dash2
execute unless score @s rpgloot.twinstep_cooldown matches 1.. unless predicate rpgc:ground if entity @s[tag=!rpgloot.twinstep_dash1] run function rpgloot:items/twinstep/dash1