execute if score .bone_breakage survival_rework.config matches 1 run function survival_rework:effect/bone_break/legs/main

# temperature in ui/main because of spaghetti code :/
execute if entity @s[tag=survival_rework.effect.bleeding] at @s run function survival_rework:effect/bleeding/main
execute if entity @s[tag=survival_rework.effect.thirst] run function survival_rework:effect/thirst/main
execute if entity @s[tag=survival_rework.effect.freshness] run function survival_rework:effect/freshness/main
execute if score .temperature survival_rework.config matches 1 run function survival_rework:effect/hypotermia/main