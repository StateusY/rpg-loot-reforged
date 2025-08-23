gamerule doImmediateRespawn true


## ───[ Core Scoreboards ]──────────────────────────────

# Temp Score
scoreboard objectives add rpgc.temp dummy

# Player ID (use instead of UUID)
scoreboard objectives add rpgc.id dummy

# Item use tracking
scoreboard objectives add rpgc.using dummy
scoreboard objectives add rpgc.stop_using dummy

# Delay for slot swap (MC jank workaround)
scoreboard objectives add rpgc.queue_swap dummy

## ───[ Player Stats ]──────────────────────────────────

# Player health
scoreboard objectives add rpgc.max_hp dummy
scoreboard objectives add rpgc.hp dummy
# Attack cooldown
scoreboard objectives add rpgc.atk_cooldown dummy


## ───[ Player State ]──────────────────────────────────
# Disconnect & death tracking
scoreboard objectives add player_left_game minecraft.custom:minecraft.leave_game
scoreboard objectives add died deathCount

# Slot tracking
scoreboard objectives add rpgc.slot0 dummy
scoreboard objectives add rpgc.slot1 dummy

## ───[ Bows / Projectiles ]────────────────────────────
scoreboard objectives add rpgc.shot_arrow minecraft.used:minecraft.bow
scoreboard objectives add rpgc.drawing dummy
scoreboard objectives add rpgc.draw_percent dummy
scoreboard objectives add rpgc.draw_speed dummy
scoreboard objectives add rpgc.velocity dummy
scoreboard objectives add rpgc.velocity_percent dummy
scoreboard objectives add rpgc.inaccuracy dummy
scoreboard objectives add rpgc.projectile_dmg dummy
scoreboard objectives add rpgc.projectile_percent dummy


## ───[ Motion / Physics ]──────────────────────────────
scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

# Fall distance
scoreboard objectives add rpgc.fall minecraft.custom:minecraft.fall_one_cm


## ───[ Constants ]─────────────────────────────────────
scoreboard objectives add constant dummy
scoreboard players set #loaded constant 1
scoreboard players set #-1 constant -1
scoreboard players set #0 constant 0
scoreboard players set #1 constant 1
scoreboard players set #2 constant 2
scoreboard players set #4 constant 4
scoreboard players set #5 constant 5
scoreboard players set #8 constant 8
scoreboard players set #10 constant 10
scoreboard players set #20 constant 20
scoreboard players set #30 constant 30
scoreboard players set #99 constant 99
scoreboard players set #100 constant 100
scoreboard players set #1000 constant 1000
scoreboard players set #7000 constant 7000


## ───[ Triggers ]──────────────────────────────────────
scoreboard objectives add rpgc.dialog trigger
# Trigger meanings:
#   1 = stats


## ───[ Init & Scheduling ]─────────────────────────────
function #rpgc:register
function rpgc:z_core/1second
function rpgc:z_core/5tick
execute unless data storage rpgc:config init run function rpgc:z_core/misc/config/init
