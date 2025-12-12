$execute unless score .crit_stage rpgc.temp matches 1.. run data merge entity @s {CustomNameVisible:1b,Motion:[$(x),$(y),$(z)],CustomName:{"color":"$(color)","text":"$(prefix)$(int).$(fract)"}}
$execute if score .crit_stage rpgc.temp matches 1 run data merge entity @s {CustomNameVisible:1b,Motion:[$(x),$(y),$(z)],CustomName:{"bold":true,"color":"$(color)","text":"$(prefix)$(int).$(fract)!"}}
$execute if score .crit_stage rpgc.temp matches 2 run data merge entity @s {CustomNameVisible:1b,Motion:[$(x),$(y),$(z)],CustomName:{"bold":true,"color":"$(color)","text":"$(prefix)$(int).$(fract)!!!!!"}}
tag @s remove rpgc.current_dmg_number
