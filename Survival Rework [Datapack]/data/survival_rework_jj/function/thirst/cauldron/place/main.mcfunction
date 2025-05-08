scoreboard players remove #distance main_score 1

# on the block
execute if block ~ ~ ~ minecraft:cauldron align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:marker run return run function survival_rework_jj:thirst/cauldron/place/end

# if not encountered, then moves on with a 0.1 block step
execute if score #distance main_score matches 1.. positioned ^ ^ ^0.1 run function survival_rework_jj:thirst/cauldron/place/main