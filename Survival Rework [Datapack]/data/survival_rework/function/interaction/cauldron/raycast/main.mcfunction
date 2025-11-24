scoreboard players remove #distance main 1

# on the block
execute if block ~ ~ ~ minecraft:water_cauldron if entity @e[type=minecraft:marker,tag=survival_rework.cauldron,distance=..3,limit=1] run function survival_rework:interaction/cauldron/raycast/end

# if not encountered, then moves on with a 0.1 block step
execute if score #distance main matches 1.. positioned ^ ^ ^0.1 run function survival_rework:interaction/cauldron/raycast/main