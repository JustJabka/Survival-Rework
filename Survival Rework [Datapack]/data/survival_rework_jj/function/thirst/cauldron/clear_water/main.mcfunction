scoreboard players remove #distance main_score 1

# on the block
execute unless block ~ ~ ~ #survival_rework_jj:air run function survival_rework_jj:thirst/cauldron/clear_water/end

# if not encountered, then moves on with a 0.1 block step
execute if score #distance main_score matches 1.. positioned ^ ^ ^0.1 run function survival_rework_jj:thirst/cauldron/clear_water/main