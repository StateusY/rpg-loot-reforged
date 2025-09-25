# /reload message
tellraw @a [{"text": "0 ","color": "white","font": "rpgloot:icon","italic": false},{"translate":"rpgloot.tooltip","font":"rpgloot:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":rpgloot.loaded,"font":"minecraft:default"}]



function rpgloot:damages
scoreboard objectives add rpgloot.temp dummy
scoreboard objectives add rpgloot.died deathCount
# Items
scoreboard objectives add rpgloot.twinstep_slam_start dummy
scoreboard objectives add rpgloot.twinstep_slam_end dummy

scoreboard objectives add rpgloot.shade_count dummy
scoreboard objectives add rpgloot.shade_timer dummy

scoreboard objectives add rpgloot.splinter_dmg dummy
scoreboard objectives add rpgloot.splinter_timer dummy

scoreboard objectives add rpgloot.parry_timer dummy

scoreboard objectives add rpgloot.mythril_mined minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add rpgloot.magnite_mined minecraft.mined:minecraft.deepslate_lapis_ore

# Menus
scoreboard objectives add rpgloot.interact_with_smithing_table minecraft.custom:minecraft.interact_with_smithing_table
scoreboard objectives add rpgloot.crafter trigger
