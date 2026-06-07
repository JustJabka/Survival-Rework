execute if predicate survival_rework:is_sprinting run return run scoreboard players add @s survival_rework.temperature 5
execute if predicate survival_rework:is_swiming run return run scoreboard players add @s survival_rework.temperature 5
execute if predicate survival_rework:is_jumping run return run scoreboard players add @s survival_rework.temperature 2
execute unless predicate justlib:movement/no/xz run scoreboard players add @s survival_rework.temperature 2