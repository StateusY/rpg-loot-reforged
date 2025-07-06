
attribute @s minecraft:entity_interaction_range modifier add downed -1000 add_value
tag @s add rpgc.downed
execute summon text_display run function rpgc:-/downed/spawn_display
gamemode spectator
particle minecraft:item{item:"redstone_block"} ~ ~.25 ~ 0 0 0 0.25 500 force
function rpgc:-/downed/spawn_part {type:1,transformation:{translation:[0f,0.12f,0.45f],right_rotation:[0.5740437f,0.0107017f,0.0606921f,0.8165022f]},mount:"@n[type=text_display,tag=rpgc.downed_timer]"}
function rpgc:-/downed/spawn_part {type:2,transformation:{translation:[0f,-1023.95f,0.2f],right_rotation:[0.5961305f,-0.2411115f,0.3488473f,0.6817619f]},mount:"@n[type=text_display,tag=rpgc.downed_timer]"}
function rpgc:-/downed/spawn_part {type:3,transformation:{translation:[0f,-2047.95f,0.2f],right_rotation:[ 0.6135351f,0.28313f,-0.3662519f,0.6397434f]},mount:"@n[type=text_display,tag=rpgc.downed_timer]"}
function rpgc:-/downed/spawn_part {type:4,transformation:{translation:[0f,-3071.85f,0.4f],right_rotation:[0.7071068f,0f,0f,0.7071068f]},mount:"@n[type=text_display,tag=rpgc.downed_timer]"}
function rpgc:-/downed/spawn_part {type:5,transformation:{translation:[0.0f,-4095.87f,-0.3f],right_rotation:[0.6591088f,-0.1488744f,0.0988839f,0.7305026f]},mount:"@n[type=text_display,tag=rpgc.downed_timer]"}
function rpgc:-/downed/spawn_part {type:6,transformation:{translation:[0.0f,-4095.85f,-0.3f],right_rotation:[0.6516364f,0.1801503f,-0.0695527f,0.7335382f]},mount:"@n[type=text_display,tag=rpgc.downed_timer]"}
