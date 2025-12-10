execute if score .thirst survival_rework.config matches 1 if score @s survival_rework.thirst matches 1.. run function survival_rework:thirst/timer
execute if score .thirst survival_rework.config matches 0 if score .temperature survival_rework.config matches 0 run return fail
function survival_rework:ui/main