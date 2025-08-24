#execute if entity @s[tag=rpgloot.twinblade_dash1_end] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}} run function rpgloot:items/twinblade/reset
attribute @s[tag=!rpgloot.twinblade_modified] minecraft:safe_fall_distance modifier add rpgloot:twinblade 100 add_value
tag @s[tag=!rpgloot.twinblade_modified] add rpgloot.twinblade_modified
execute if entity @s[tag=rpgloot.twinblade_dashing,tag=!rpgloot.twinblade_slam] if predicate rpgc:sneaking run function rpgloot:items/twinblade/slam
execute if entity @s[tag=rpgloot.twinblade_slam] run scoreboard players add .slam rpgloot.temp 1