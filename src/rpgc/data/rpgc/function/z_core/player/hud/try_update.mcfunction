execute if entity @s[tag=!rpgc.survival_hud,gamemode=!creative,gamemode=!spectator] run function rpgc:z_core/player/hud/survival
execute if entity @s[tag=rpgc.survival_hud] unless entity @s[gamemode=!creative,gamemode=!spectator] run function rpgc:z_core/player/hud/creative

execute if entity @s[tag=rpgc.hud_needs_update] run function rpgc:z_core/player/hud/update

