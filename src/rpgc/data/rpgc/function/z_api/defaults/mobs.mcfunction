# Put the custom data types here
function rpgc:z_api/register_mob {type:"minecraft:blaze",properties:{cd:20,weight:1,damage:[{type:'physical',amount:5}]}}
#function rpgc:z_api/register_mob {type:"minecraft:iron_golem",properties:{cd:20,weight:1,hp:50,name:Chonk}}
function rpgc:z_api/register_mob {type:"minecraft:iron_golem",properties:{cd:10,weight:1,hp:1000,attributes:[{id:armor,name:base,type:add,value:25},{id:physical_dmg,name:base,type:add,value:25},{id:physical_res,name:base,type:add,value:0.75}],name:{"color":"blue","text":"A Heckin CHONKER"}}}
function rpgc:z_api/register_mob {type:"minecraft:wither",properties:{cd:0,weight:1,hp:1500,attributes:[{id:wither_dmg,name:base,type:add,value:15}],name:{"color":"black","text":"Wither"}}}
