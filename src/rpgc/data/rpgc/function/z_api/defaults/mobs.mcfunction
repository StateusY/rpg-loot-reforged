# Put the custom data types here
function rpgc:z_api/register_mob {type:"minecraft:blaze",properties:{cd:20,weight:1,damage:[{type:'physical',amount:5}]}}
function rpgc:z_api/register_mob {type:"minecraft:iron_golem",properties:{cd:20,weight:1,hp:50,armor:25,name:Chonk,damage:[{type:'physical',amount:5}]}}
function rpgc:z_api/register_mob {type:"minecraft:iron_golem",properties:{cd:100,weight:1,hp:50,armor:25,attributes:[{id:armor,name:base,type:add,value:25},{id:max_hp,name:temp,type:add,value:10}],name:{"color":"blue","text":"Mega Chonk"},damage:[{type:'physical',amount:5}]}}