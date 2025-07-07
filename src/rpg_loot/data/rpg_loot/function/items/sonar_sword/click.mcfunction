execute if score @s rpg_loot.sonar_sword_cd matches 1.. run return fail
scoreboard players set @s rpg_loot.sonar_sword_cd 100
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sneak":false}}}} run scoreboard players set $strength player_motion.api.launch 30000
execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"type_specific":{"type":"minecraft:player","input":{"sneak":true}}}} run scoreboard players set $strength player_motion.api.launch -30000
function player_motion:api/launch_looking