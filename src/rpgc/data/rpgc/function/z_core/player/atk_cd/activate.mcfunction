
scoreboard players set @s rpgc.atk_cooldown 20
scoreboard players set #multemp rpgc.atk_cooldown 100
execute store result score #divtemp rpgc.atk_cooldown run attribute @s minecraft:attack_speed get 100
scoreboard players operation @s rpgc.atk_cooldown *= #multemp rpgc.atk_cooldown
scoreboard players operation @s rpgc.atk_cooldown /= #divtemp rpgc.atk_cooldown
attribute @s attack_damage base set -100000
execute store result score @s rpgc.slot1 run data get entity @s SelectedItemSlot

