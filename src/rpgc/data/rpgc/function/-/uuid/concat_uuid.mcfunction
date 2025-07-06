$data modify storage rpgc:uuid out set value "$(3)$(2)$(1)$(0)-$(7)$(6)-$(5)$(4)-$(b)$(a)-$(9)$(8)$(f)$(e)$(d)$(c)"
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp a
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp b
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp c
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp d
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp e
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp f
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 0
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 1
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 2
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 3
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 4
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 5
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 6
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 7
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 8
execute if score .storage rpgc.config matches 1 run data remove storage rpgc:temp 9
