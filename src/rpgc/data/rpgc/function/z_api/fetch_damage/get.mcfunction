execute store result score .dmg_mult rpgc.temp run function rpgc:z_api/attribute/get {id:dmg_mult}
scoreboard players set .dmg_out rpgc.temp 0

#get the damage types the player is dealing and the base amount
data modify storage rpgc:temp fetch.damages set from storage rpgc:registry damage
function rpgc:z_api/fetch_damage/recurse
data remove storage rpgc:temp fetch
return run scoreboard players get .dmg_out rpgc.temp