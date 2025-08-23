advancement revoke @s only rpgc:attack

function rpgc:z_core/player/atk_cd/activate
execute if entity @s[tag=rpgc.unarmed] unless entity @p[tag=rpgc.attacked_broadcast] run function rpgc:z_api/damage_by {by:"@s",target:"@n[type=#rpgc:all,nbt={HurtTime:10s}]"}
execute if entity @s[tag=rpgc.unarmed] if entity @p[tag=rpgc.attacked_broadcast] run function rpgc:z_api/damage_by {by:"@s",target:"@p[tag=rpgc.attacked_broadcast]"}
execute if entity @s[tag=rpgc.unarmed] run tag @p[tag=rpgc.attacked_broadcast] remove rpgc.attacked_broadcast
