$execute on passengers run data merge entity @s {item:{id:"minecraft:tinted_glass",count:1,components:{"minecraft:item_model":"rpgloot:effects/titanium/$(image)"}}}
execute rotated as @n[type=player,tag=rpgloot.titanium_current] rotated ~ 0 run tp @s ^ ^ ^ ~ 0
scoreboard players set @s rpgc.ttk 10