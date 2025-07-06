function rpgc:-/math/load
#gamerules
gamerule doImmediateRespawn true

#reset storages
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:api mob_data
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:api mob_id

scoreboard objectives add rpgc.digit1 dummy
scoreboard objectives add rpgc.digit2 dummy
scoreboard objectives add rpgc.click_cd dummy
scoreboard objectives add rpgc.slot0 dummy
scoreboard objectives add rpgc.slot1 dummy
scoreboard objectives add rpgc.atk_cooldown dummy
scoreboard objectives add rpgc.reviving dummy
scoreboard objectives add rpgc.death deathCount
scoreboard objectives add rpgc.id dummy
scoreboard objectives add rpgc.id2 dummy
scoreboard objectives add rpgc.temp dummy
scoreboard objectives add rpgc.config dummy
scoreboard objectives add rpgc.hp dummy
scoreboard objectives add rpgc.max_hp dummy
scoreboard objectives add rpgc.regen dummy
scoreboard objectives add rpgc.regen_delay dummy
scoreboard objectives add rpgc.current_regen_delay dummy
scoreboard objectives add rpgc.atk_cd dummy
scoreboard objectives add rpgc.downed_timer dummy
scoreboard objectives add rpgc.fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add rpgc.armor dummy

scoreboard objectives add rpgc.attribute.crit.dmg dummy

#bows
scoreboard objectives add rpgc.shot_arrow minecraft.used:minecraft.bow

scoreboard objectives add rpgc.drawing dummy
scoreboard objectives add rpgc.draw_percent dummy
scoreboard objectives add rpgc.draw_speed dummy
scoreboard objectives add rpgc.velocity dummy
scoreboard objectives add rpgc.velocity_percent dummy
scoreboard objectives add rpgc.inaccuracy dummy

scoreboard objectives add rpgc.projectile_dmg dummy
scoreboard objectives add rpgc.projectile_percent dummy
scoreboard objectives add rpgc.projectile_count dummy

scoreboard objectives add rpgc.joined dummy

scoreboard objectives add rpgc.food food
#constants
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
#uuid
scoreboard objectives add gu.main dummy
scoreboard objectives add num dummy
scoreboard players set 256 num 256
data modify storage rpgc:uuid hex_chars set value ["00","01","02","03","04","05","06","07","08","09","0a","0b","0c","0d","0e","0f","10","11","12","13","14","15","16","17","18","19","1a","1b","1c","1d","1e","1f","20","21","22","23","24","25","26","27","28","29","2a","2b","2c","2d","2e","2f","30","31","32","33","34","35","36","37","38","39","3a","3b","3c","3d","3e","3f","40","41","42","43","44","45","46","47","48","49","4a","4b","4c","4d","4e","4f","50","51","52","53","54","55","56","57","58","59","5a","5b","5c","5d","5e","5f","60","61","62","63","64","65","66","67","68","69","6a","6b","6c","6d","6e","6f","70","71","72","73","74","75","76","77","78","79","7a","7b","7c","7d","7e","7f","80","81","82","83","84","85","86","87","88","89","8a","8b","8c","8d","8e","8f","90","91","92","93","94","95","96","97","98","99","9a","9b","9c","9d","9e","9f","a0","a1","a2","a3","a4","a5","a6","a7","a8","a9","aa","ab","ac","ad","ae","af","b0","b1","b2","b3","b4","b5","b6","b7","b8","b9","ba","bb","bc","bd","be","bf","c0","c1","c2","c3","c4","c5","c6","c7","c8","c9","ca","cb","cc","cd","ce","cf","d0","d1","d2","d3","d4","d5","d6","d7","d8","d9","da","db","dc","dd","de","df","e0","e1","e2","e3","e4","e5","e6","e7","e8","e9","ea","eb","ec","ed","ee","ef","f0","f1","f2","f3","f4","f5","f6","f7","f8","f9","fa","fb","fc","fd","fe","ff"]

scoreboard objectives add motion_x1 dummy
scoreboard objectives add motion_y1 dummy
scoreboard objectives add motion_z1 dummy

scoreboard objectives add motion_x2 dummy
scoreboard objectives add motion_y2 dummy
scoreboard objectives add motion_z2 dummy

#functions
#function #rpgc:damage
function rpgc:-/register_all
function rpgc:config
#function rpgc:status_effects
function rpgc:-/1sec
function rpgc:-/5tick
#function rpgc:-/10tick

say loaded