
execute if entity @s[tag=rpgc.arrow_impact] run return fail
execute store result score .crit_stage rpgc.temp run data get entity @s data.crit_stage
# data modify storage rpgc:temp bow_hit.damage set from entity @s data.damage
# data modify storage rpgc:temp bow_hit.target set value "@n[nbt={HurtTime:10s}]"
# function rpgc:z_api/damage with storage rpgc:temp bow_hit
function rpgc:z_api/damage_by {by:"@s",target:"@n[nbt={HurtTime:10s}]"}
data remove storage rpgc:temp bow_hit
kill @s
