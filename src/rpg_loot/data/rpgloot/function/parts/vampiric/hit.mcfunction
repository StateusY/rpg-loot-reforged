
function rpgc:z_api/fetch_damage/get
execute store result storage rpgloot:temp vampiric.heal double 0.05 run scoreboard players get .dmg_out rpgc.temp
execute store result score .heal rpgloot.temp run data get storage rpgloot:temp vampiric.heal 1
scoreboard players operation @s rpgc.hp += .heal rpgloot.temp
execute if score @s rpgc.hp > @s rpgc.max_hp run scoreboard players operation @s rpgc.hp = @s rpgc.max_hp
function rpgc:z_core/player/hud/update
execute positioned as @e[type=#rpgc:all,tag=rpgc.current_victim] anchored eyes positioned ^ ^ ^ run function rpgloot:parts/vampiric/spawn_orb