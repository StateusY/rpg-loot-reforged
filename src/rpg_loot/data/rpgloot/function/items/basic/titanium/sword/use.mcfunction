tag @s add rpgloot.titanium_slash_current
execute store result storage rpgloot:temp titanium.damage double 0.0005 run function rpgc:z_api/fetch_damage/get

execute store result storage rpgloot:temp titanium.speed double 0.1 run attribute @s movement_speed get 120
execute store result storage rpgloot:temp titanium.hitbox double 0.1 run attribute @s movement_speed get 200
execute store result storage rpgloot:temp titanium.x double 0.1 run random value -10..10
execute store result storage rpgloot:temp titanium.y double 0.05 run random value -5..5
execute store result storage rpgloot:temp titanium.z double 0.1 run random value -10..10
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-.5 ~ run function rpgloot:items/basic/titanium/sword/slash with storage rpgloot:temp titanium
execute store result storage rpgloot:temp titanium.x double 0.1 run random value -10..10
execute store result storage rpgloot:temp titanium.y double 0.05 run random value -5..5
execute store result storage rpgloot:temp titanium.z double 0.1 run random value -10..10
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-.5 ~ run function rpgloot:items/basic/titanium/sword/slash with storage rpgloot:temp titanium
execute store result storage rpgloot:temp titanium.x double 0.1 run random value -10..10
execute store result storage rpgloot:temp titanium.y double 0.1 run random value -5..5
execute store result storage rpgloot:temp titanium.z double 0.1 run random value -10..10
execute anchored eyes positioned ^ ^ ^ positioned ~ ~-.5 ~ run function rpgloot:items/basic/titanium/sword/slash with storage rpgloot:temp titanium

execute positioned ~ ~1 ~ run function rpgloot:items/basic/titanium/sword/hitbox with storage rpgloot:temp titanium

data remove storage rpgloot:temp titanium
tag @s remove rpgloot.titanium_slash_current