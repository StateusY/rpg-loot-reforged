#> player_motion:internal/technical/tick
execute unless entity d4bd74a7-4e82-4a07-8850-dfc4d89f9e2f run summon marker 0.0 0.0 0.0 {UUID:[I; -725781337, 1317161479, -2007965756, -660627921], Tags:["smithed.strict", "smithed.entity"]}

# TICK FUNCTION
schedule function player_motion:internal/technical/tick 1t append

# LAUNCH PLAYERS
execute if score $function_called player_motion.internal.dummy matches 1 as @a[tag=player_motion.launch] at @s run function player_motion:internal/launch/main