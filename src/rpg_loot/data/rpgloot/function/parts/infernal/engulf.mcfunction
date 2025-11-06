particle flame ~ ~1.5 ~ 0 0 0 0.2 25 normal
particle crimson_spore ~ ~1.5 ~ 0 0 0 0.2 50 normal
particle smoke ~ ~1.5 ~ 0 0 0 0.2 25 normal

$function rpgc:z_api/damage {damage:[{type:fire,value:$(dmg)}],target:"@s"}
playsound minecraft:entity.snow_golem.death player @a ~ ~ ~ 2 0
playsound minecraft:block.lava.extinguish player @a ~ ~ ~ 0.25 0