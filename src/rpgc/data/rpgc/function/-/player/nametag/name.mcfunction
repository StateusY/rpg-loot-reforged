data modify storage rpgc:temp nametag.name set from entity @s CustomName
execute on passengers on passengers run data modify entity @s[tag=rpgc.name_display] text set from storage rpgc:temp nametag.name
data remove storage rpgc:temp nametag