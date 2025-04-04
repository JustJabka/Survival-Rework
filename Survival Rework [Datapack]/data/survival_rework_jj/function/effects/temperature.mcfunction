# normal
execute if score @s survival_rework_jj.temperature matches 3201..3699 run scoreboard players set #temp2 main_score 2

# hypotermia
execute if score @s survival_rework_jj.temperature matches ..3200 run function survival_rework_jj:effects/hypotermia/light
execute if score @s survival_rework_jj.temperature matches ..3000 run function survival_rework_jj:effects/hypotermia/medium
execute if score @s survival_rework_jj.temperature matches ..2800 run function survival_rework_jj:effects/hypotermia/extreme

# hypertermia
execute if predicate survival_rework_jj:has_fire_resistance run return fail
execute if score @s survival_rework_jj.temperature matches 3700.. run function survival_rework_jj:effects/hypertermia/light
execute if score @s survival_rework_jj.temperature matches 3900.. run function survival_rework_jj:effects/hypertermia/medium
execute if score @s survival_rework_jj.temperature matches 4200.. run function survival_rework_jj:effects/hypertermia/extreme