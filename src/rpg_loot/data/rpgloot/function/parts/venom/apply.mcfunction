$execute store result storage rpgloot:temp venom.hp int $(percent) run scoreboard players get @s rpgc.max_hp
execute store result score .check rpgloot.temp run data get storage rpgloot:temp venom.hp
tellraw @a {"score":{"name":".check","objective":"rpgloot.temp"}}
execute store result score @s rpgloot.venom_dmg run scoreboard players get @s rpgloot.venom_dmg
execute if score .check rpgloot.temp > @s rpgloot.venom_dmg store result score @s rpgloot.venom_dmg run data get storage rpgloot:temp venom.hp
scoreboard players set @s rpgloot.venom_dur 8
function rpgc:z_api/event/add {name:"venom",source:"debuff",listen:"slow_tick",command:"function rpgloot:statuses/venom/tick"}