execute store result score @s rpgc.slot0 run data get entity @s SelectedItemSlot
execute if score @s rpgc.atk_cooldown matches 1.. run scoreboard players remove @s rpgc.atk_cooldown 1
execute if score @s rpgc.atk_cooldown matches ..0 run function rpgc:-/player/atk_cd/reset
execute unless score @s rpgc.slot0 = @s rpgc.slot1 run function rpgc:-/player/slots/hotbar
execute unless score @s rpgc.slot0 = @s rpgc.slot1 run execute store result score @s rpgc.slot1 run data get entity @s SelectedItemSlot
