# Apply weakness effect to the entity for a certain duration.
effect give @s weakness 100 255 true
$data merge entity @s {active_effects:[{id:"minecraft:weakness",duration:$(atk_cd),show_particles:0b}]}
