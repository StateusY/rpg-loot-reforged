gamerule doImmediateRespawn true


## Scoreboards

# Simple dummy data, any data stored here is expected to be changed or destroyed after a function ends
scoreboard objectives add rpgc.temp dummy

# Internal ID to attach data and context to PLAYER ONLY, use instead of UUID when possible
scoreboard objectives add rpgc.id dummy

# Use scoreboards for hp because regen would make it very laggy
scoreboard objectives add rpgc.max_hp dummy
scoreboard objectives add rpgc.hp dummy

scoreboard objectives add rpgc.atk_cooldown dummy

## TEMP
execute as lostpuppet run function rpgc:test
execute unless data storage rpgc:config init run function rpgc:z_core/misc/config/init


scoreboard objectives add player_left_game minecraft.custom:minecraft.leave_game
scoreboard objectives add died deathCount
## Bows
scoreboard objectives add rpgc.shot_arrow minecraft.used:minecraft.bow
scoreboard objectives add rpgc.drawing dummy
scoreboard objectives add rpgc.draw_percent dummy
scoreboard objectives add rpgc.draw_speed dummy
scoreboard objectives add rpgc.velocity dummy
scoreboard objectives add rpgc.velocity_percent dummy
scoreboard objectives add rpgc.inaccuracy dummy
scoreboard objectives add rpgc.projectile_dmg dummy
scoreboard objectives add rpgc.projectile_percent dummy

scoreboard objectives add rpgc.slot0 dummy
scoreboard objectives add rpgc.slot1 dummy


scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

## Constants
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
function #rpgc:register

#triggers
scoreboard objectives add rpgc.dialog trigger
## trigger meanings
# 1 = stats


# Schedules
function rpgc:z_core/1second