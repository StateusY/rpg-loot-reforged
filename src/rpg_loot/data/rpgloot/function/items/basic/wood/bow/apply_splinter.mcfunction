scoreboard players operation @s rpgloot.splinter_dmg += .splinter_dmg rpgloot.temp
scoreboard players set @s rpgloot.splinter_timer 5
execute unless entity @s[tag=rpgloot.splintered] run function rpgc:z_api/event/add {name:"splintered",source:"debuff",listen:"mob_tick",command:"function rpgloot:statuses/splinter/tick"}