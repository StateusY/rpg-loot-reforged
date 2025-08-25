# Put the custom data types here
function rpgc:z_api/register_mob {type:"minecraft:blaze",properties:{cd:20,weight:1,damage:[{type:'physical',amount:5}]}}
function rpgc:z_api/register_mob {type:"minecraft:iron_golem",properties:{cd:20,weight:20,hp:50,attributes:[{id:physical_res,name:base,type:add,value:0.2}],name:{"color":"blue","text":"CHONK"}}}
function rpgc:z_api/register_mob {type:"minecraft:iron_golem",properties:{cd:10,weight:1,hp:1000,nbt:{attributes:[{id:"minecraft:scale",base:3}]},attributes:[{id:armor,name:base,type:add,value:25},{id:physical_dmg,name:base,type:add,value:50},{id:physical_res,name:base,type:add,value:0.75}],name:{"color":"blue","text":"MEGA CHONKER!"}}}
function rpgc:z_api/register_mob {type:"minecraft:iron_golem",properties:{cd:1,weight:3,hp:5,nbt:{attributes:[{id:"minecraft:scale",base:0.5},{id:"minecraft:attack_speed",base:5}]},attributes:[{id:physical_dmg,name:base,type:add,value:-5}],name:{"color":"blue","text":"mini chonk"}}}
function rpgc:z_api/register_mob {type:"minecraft:wither",properties:{cd:0,weight:1,hp:1500,attributes:[{id:wither_dmg,name:base,type:add,value:15}],name:{"color":"black","text":"Wither"}}}
