
$scoreboard objectives remove rpgc.$(type)_damage
$scoreboard objectives remove rpgc.$(type)_resistance
$scoreboard objectives remove rpgc.$(type)_protection
data remove storage rpgc:registry damage[0]
execute if data storage rpgc:registry damage[0] run function rpgc:-/damage/clear_loop
