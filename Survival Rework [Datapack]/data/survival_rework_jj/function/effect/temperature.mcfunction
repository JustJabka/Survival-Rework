# normal
execute if score @s survival_rework_jj.temperature matches 3201..3699 run scoreboard players set #temp2 main_score 2

# hypotermia
execute if score @s survival_rework_jj.temperature matches ..3200 run function survival_rework_jj:effect/hypotermia/give/amplifier/1
execute if score @s survival_rework_jj.temperature matches ..3000 run function survival_rework_jj:effect/hypotermia/give/amplifier/2
execute if score @s survival_rework_jj.temperature matches ..2800 run function survival_rework_jj:effect/hypotermia/give/amplifier/3

# hypertermia
execute if predicate survival_rework_jj:has_fire_resistance run return fail
execute if score @s survival_rework_jj.temperature matches 3700.. run function survival_rework_jj:effect/hypertermia/give/amplifier/1
execute if score @s survival_rework_jj.temperature matches 3900.. run function survival_rework_jj:effect/hypertermia/give/amplifier/2
execute if score @s survival_rework_jj.temperature matches 4200.. run function survival_rework_jj:effect/hypertermia/give/amplifier/3