function rpgc:z_api/event/call {event:slow_tick}
execute store result score @s rpgc.saturation run data get entity @s foodSaturationLevel
execute unless score @s[tag=!rpgc.downed] rpgc.current_regen_delay matches 1.. if score @s rpgc.saturation matches 1.. run function rpgc:z_core/player/regen/heal
execute unless score @s[tag=!rpgc.downed] rpgc.current_regen_delay matches 1.. if score @s rpgc.food matches 10.. run function rpgc:z_core/player/regen/heal