# Clear player context
data modify storage rpgc:player context set value {}

# Add ID to context
execute store result storage rpgc:player context.id int 1 run scoreboard players get @s rpgc.id

