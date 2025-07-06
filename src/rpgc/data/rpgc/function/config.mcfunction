
#Default stats for players
scoreboard players set #config rpgc.max_hp 200

#how much hp the players regen a second. 10= 1.0, 15= 1.5, values lower then 4 will not work
scoreboard players set #config rpgc.regen 4
scoreboard players set #config rpgc.regen_delay 60

#how many seconds a player is downed for
scoreboard players set #config rpgc.downed_timer 30

#how many ticks it takes for a player to be revived (20 ticks = 1 second)
scoreboard players set #config rpgc.reviving 100


#Important Damage Types
function rpgc:register_damage {prefix:"☁",type:fall,color:'#BDFFE2'}
function rpgc:register_damage {prefix:"🫧",type:suffocate,color:'#295587'}
function rpgc:register_damage {prefix:"🔥",type:fire,color:'#FF5E00'}
function rpgc:register_damage {prefix:"❄",type:cold,color:'aqua'}
function rpgc:register_damage {prefix:"✊",type:physical,color:'#B48C4B'}
function rpgc:register_damage {prefix:"✨",type:magic,color:'#8803fc'}
function rpgc:register_damage {prefix:"💔",type:wither,color:black}
function rpgc:register_damage {prefix:"❤",type:heal,color:'#34eb43'}


#Debug Text
scoreboard players set #debug rpgc.config 1