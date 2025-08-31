data modify storage rpgc:temp hud.contents set value [{text:"",shadow_color:0}]

execute if entity @s[gamemode=!creative,gamemode=!spectator] run function rpgc:z_core/player/hud/hp/build

function rpgc:z_core/player/hud/apply with storage rpgc:temp hud

