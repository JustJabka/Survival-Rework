execute if score .bone_breakage survival_rework_jj.config matches 1 run function survival_rework_jj:effect/bone_break/legs/main

# temperature in ui/main because of spaghetti code :/
execute if entity @s[tag=survival_rework_jj.effect.bleeding] at @s run function survival_rework_jj:effect/bleeding/main
execute if entity @s[tag=survival_rework_jj.effect.thirst] run function survival_rework_jj:effect/thirst/main
execute if entity @s[tag=survival_rework_jj.effect.freshness] run function survival_rework_jj:effect/freshness/main