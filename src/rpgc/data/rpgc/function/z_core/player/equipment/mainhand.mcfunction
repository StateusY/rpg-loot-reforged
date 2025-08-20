execute store result score @s rpgc.slot0 run data get entity @s SelectedItemSlot
execute unless score @s rpgc.slot0 = @s rpgc.slot1 run function rpgc:z_core/player/equipment/swaped
execute unless score @s rpgc.slot0 = @s rpgc.slot1 run execute store result score @s rpgc.slot1 run data get entity @s SelectedItemSlot
