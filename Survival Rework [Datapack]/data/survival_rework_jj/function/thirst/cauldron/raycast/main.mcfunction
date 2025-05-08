scoreboard players remove #distance main_score 1

# on the block
execute if block ~ ~ ~ minecraft:water_cauldron if entity @e[type=minecraft:marker,tag=survival_rework_jj.cauldron,distance=..3,limit=1] run function survival_rework_jj:thirst/cauldron/raycast/end

# if not encountered, then moves on with a 0.1 block step
execute if score #distance main_score matches 1.. positioned ^ ^ ^0.1 run function survival_rework_jj:thirst/cauldron/raycast/main