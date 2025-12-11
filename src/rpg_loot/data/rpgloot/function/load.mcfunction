# /reload message
tellraw @a [{"text": "0 ","color": "white","font": "rpgloot:icon","italic": false},{"translate":"rpgloot.tooltip","font":"rpgloot:tooltip","color":"white","italic":false},{text:" ","font":"minecraft:default"},{"translate":rpgloot.loaded,"font":"minecraft:default"}]



function rpgloot:damages
scoreboard objectives add rpgloot.temp dummy
scoreboard objectives add rpgloot.died deathCount

# util
scoreboard objectives add rpgloot.ttk dummy
scoreboard objectives add rpgloot.block_shatter dummy
scoreboard objectives add rpgloot.block_dur dummy
scoreboard objectives add rpgloot.block_shrink dummy

# effects
scoreboard objectives add rpgloot.effect0 dummy
scoreboard objectives add rpgloot.effect1 dummy
scoreboard objectives add rpgloot.effect2 dummy
# Items
scoreboard objectives add rpgloot.twinstep_slam_start dummy
scoreboard objectives add rpgloot.twinstep_slam_end dummy
scoreboard objectives add rpgloot.twinstep_cooldown dummy


scoreboard objectives add rpgloot.storm_spear_charge dummy
scoreboard objectives add rpgloot.storm_spear_strength dummy

scoreboard objectives add rpgloot.shade_count dummy
scoreboard objectives add rpgloot.shade_timer dummy

scoreboard objectives add rpgloot.splinter_dmg dummy
scoreboard objectives add rpgloot.splinter_timer dummy

scoreboard objectives add rpgloot.parry_timer dummy

scoreboard objectives add rpgloot.silver_impact_spike_timer dummy

scoreboard objectives add rpgloot.titanium_image dummy
scoreboard objectives add rpgloot.titanium_timer dummy
scoreboard objectives add rpgloot.titanium_charge dummy
scoreboard objectives add rpgloot.titanium_bow dummy

scoreboard objectives add rpgloot.silver_frostbite dummy
scoreboard objectives add rpgloot.silver_frostbite_decay dummy
scoreboard objectives add rpgloot.silver_max_frostbite dummy
# Parts
scoreboard objectives add rpgloot.venom_dmg dummy
scoreboard objectives add rpgloot.venom_dur dummy

scoreboard objectives add rpgloot.magnite_charge dummy
scoreboard objectives add rpgloot.magnite_count dummy


scoreboard objectives add rpgloot.mythril_mined minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add rpgloot.magnite_mined minecraft.mined:minecraft.deepslate_lapis_ore

scoreboard objectives add rpgloot.ember_charge dummy
scoreboard objectives add rpgloot.ember_dur dummy
scoreboard objectives add rpgloot.ember_gravity dummy
# forge
scoreboard objectives add rpgloot.dummy dummy
scoreboard objectives add rpgloot.hit_count dummy
scoreboard objectives add rpgloot.hit_timer dummy

scoreboard objectives add rpgloot.selected_slot dummy
scoreboard objectives add rpgloot.occupied_slots dummy
scoreboard objectives add rpgloot.occupied_slot_1 dummy
scoreboard objectives add rpgloot.occupied_slot_2 dummy
scoreboard objectives add rpgloot.occupied_slot_3 dummy
scoreboard objectives add rpgloot.occupied_slot_4 dummy
scoreboard objectives add rpgloot.occupied_slot_5 dummy
scoreboard objectives add rpgloot.occupied_slot_6 dummy
scoreboard objectives add rpgloot.occupied_slot_7 dummy
scoreboard objectives add rpgloot.occupied_slot_8 dummy
scoreboard objectives add rpgloot.occupied_slot_9 dummy
scoreboard objectives add rpgloot.item_count dummy
scoreboard objectives add rpgloot.smelt_time dummy
scoreboard objectives add rpgloot.rotation dummy

# Menus
scoreboard objectives add rpgloot.interact_with_smithing_table minecraft.custom:minecraft.interact_with_smithing_table
scoreboard objectives add rpgloot.crafter trigger
