say parry
playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 2
function rpgc:z_api/attribute/modifier/add {id:dmg_mult,source:parry,name:"riposte",value:.5,type:"mul"}
function rpgc:z_core/combat/hit/reset_without_tag
function rpgc:z_api/damage_by {by:"@s",target:"@n[type=#rpgc:all,tag=rpgc.current_attacker,tag=!rpgloot.parrying]"}
function rpgc:z_api/attribute/modifier/remove_by_name {name:riposte}