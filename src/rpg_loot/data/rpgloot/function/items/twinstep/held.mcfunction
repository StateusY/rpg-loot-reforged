#execute if entity @s[tag=rpgloot.twinstep_dash1_end] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run function rpgloot:items/twinstep/reset
attribute @s[tag=!rpgloot.twinstep_modified] minecraft:safe_fall_distance modifier add rpgloot:twinstep 100 add_value
tag @s[tag=!rpgloot.twinstep_modified] add rpgloot.twinstep_modified
execute if entity @s[tag=rpgloot.twinstep_dashing,tag=!rpgloot.twinstep_slam] if predicate rpgc:sneaking run function rpgloot:items/twinstep/slam
execute if entity @s[tag=rpgloot.twinstep_slam] run scoreboard players add .slam rpgloot.temp 1