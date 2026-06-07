scoreboard players remove #distance main 1

# on the block
execute unless block ~ ~ ~ #justlib:shared/raycast_ignored run function survival_rework:thirst/cauldron/clear_water/end

# if not encountered, then moves on with a 0.1 block step
execute if score #distance main matches 1.. positioned ^ ^ ^0.1 run function survival_rework:thirst/cauldron/clear_water/main