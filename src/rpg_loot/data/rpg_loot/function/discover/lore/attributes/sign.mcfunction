$execute if score .amount rpg_loot.temp matches 0.. run return run data modify $(location).sign set value "$(positive)"
$data modify $(location).sign set value "$(negative)"
scoreboard players operation .amount rpg_loot.temp *= #-1 constant
