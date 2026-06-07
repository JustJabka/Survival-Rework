scoreboard players remove #distance main 1

## on the block
execute unless block ~ ~ ~ #justlib:shared/raycast_ignored run function survival_rework:interaction/water/raycast/end

## if not encountered, then moves on with a 0.2 block step
execute if score #distance main matches 1.. positioned ^ ^ ^0.2 run function survival_rework:interaction/water/raycast/main