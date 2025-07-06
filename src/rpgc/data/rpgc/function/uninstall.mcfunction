execute unless function rpgc:isloaded run return run tellraw @a {"color":"dark_red","text":"Datapack Is Already Uninstalled"}
schedule clear rpgc:-/1sec
schedule clear rpgc:-/5tick
function rpgc:-/damage/clear_loop
scoreboard objectives remove rpgc.digit1
scoreboard objectives remove rpgc.digit2
scoreboard objectives remove rpgc.slot0
scoreboard objectives remove rpgc.slot1
scoreboard objectives remove rpgc.atk_cooldown
scoreboard objectives remove rpgc.reviving
scoreboard objectives remove rpgc.death
scoreboard objectives remove rpgc.id
scoreboard objectives remove rpgc.id2
scoreboard objectives remove rpgc.temp
scoreboard objectives remove rpgc.config
scoreboard objectives remove rpgc.hp
scoreboard objectives remove rpgc.max_hp
scoreboard objectives remove rpgc.regen
scoreboard objectives remove rpgc.regen_delay
scoreboard objectives remove rpgc.current_regen_delay
scoreboard objectives remove rpgc.atk_cd
scoreboard objectives remove rpgc.downed_timer
scoreboard objectives remove rpgc.fall
scoreboard objectives remove rpgc.armor
scoreboard objectives remove rpgc.armor_pen
scoreboard objectives remove rpgc.dmg_mult
scoreboard objectives remove rpgc.crit_dmg
scoreboard objectives remove rpgc.crit_chance
scoreboard objectives remove rpgc.shot_arrow
scoreboard objectives remove rpgc.drawing
scoreboard objectives remove rpgc.draw_percent
scoreboard objectives remove rpgc.draw_speed
scoreboard objectives remove rpgc.velocity
scoreboard objectives remove rpgc.velocity_percent
scoreboard objectives remove rpgc.inaccuracy
scoreboard objectives remove rpgc.projectile_dmg
scoreboard objectives remove rpgc.projectile_percent
scoreboard objectives remove rpgc.projectile_count
scoreboard objectives remove rpgc.food
scoreboard objectives remove constant
scoreboard objectives remove gu.main
scoreboard objectives remove num
scoreboard objectives remove motion_x1
scoreboard objectives remove motion_y1
scoreboard objectives remove motion_z1
scoreboard objectives remove motion_x2
scoreboard objectives remove motion_y2
scoreboard objectives remove motion_z2

data modify storage rpgc:uninstall queued_players set value []
execute if data storage rpgc:data player[0] run function rpgc:-/uninstall/queue_player with storage rpgc:data player[0]

data remove storage rpgc:data player
data remove storage rpgc:data current
data remove storage rpgc:math armor
data remove storage rpgc:registry damage
data remove storage rpgc:registry mob
data remove storage rpgc:registry modifier
data remove storage rpgc:uuid in
data remove storage rpgc:uuid out
data remove storage rpgc:uuid id
data remove storage rpgc:uuid hex_chars


tellraw @a {"color":"green","text":"Datapack Is Now Ready To Be Uninstalled"}
