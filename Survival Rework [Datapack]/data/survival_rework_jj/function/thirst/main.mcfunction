execute if score .thirst survival_rework_jj.config matches 1 if score @s survival_rework_jj.thirst matches 1.. run function survival_rework_jj:thirst/timer
execute if score .thirst survival_rework_jj.config matches 0 if score .temperature survival_rework_jj.config matches 0 run return fail
function survival_rework_jj:ui/main