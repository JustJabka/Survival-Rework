scoreboard players remove #distance main_score 1

## on the block
execute unless block ~ ~ ~ #survival_rework_jj:air run function survival_rework_jj:interaction/water/raycast/end

## if not encountered, then moves on with a 0.2 block step
execute if score #distance main_score matches 1.. positioned ^ ^ ^0.2 run function survival_rework_jj:interaction/water/raycast/main