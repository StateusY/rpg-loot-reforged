$function rpgc:z_api/attribute/modifier/add {id:max_hp,name:base,type:add,value:$(hp)}
$scoreboard players set @s rpgc.max_hp $(hp)
execute store result score @s rpgc.hp run scoreboard players operation @s rpgc.max_hp *= #100 constant