execute if predicate survival_rework_jj:is_sprinting run return run scoreboard players add @s survival_rework_jj.temperature 5
execute if predicate survival_rework_jj:is_swiming run return run scoreboard players add @s survival_rework_jj.temperature 5
execute unless predicate survival_rework_jj:is_not_moving run scoreboard players add @s survival_rework_jj.temperature 2