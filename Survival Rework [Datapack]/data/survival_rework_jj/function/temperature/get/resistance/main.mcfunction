scoreboard players set #survival_rework_jj.resistance main_score 30
execute if predicate survival_rework_jj:in_water run scoreboard players set #survival_rework_jj.resistance main_score 50

# Convulsions
execute if score @s survival_rework_jj.temperature matches ..3450 run scoreboard players remove #survival_rework_jj.resistance main_score 5

# Hot environment
execute if score #survival_rework_jj.temperature_diff main_score matches ..-1 run function survival_rework_jj:temperature/get/resistance/hot

# Cold environment
execute if score #survival_rework_jj.temperature_diff main_score matches 1.. run function survival_rework_jj:temperature/get/resistance/cold

execute if score #survival_rework_jj.resistance main_score matches ..-1 run scoreboard players set #survival_rework_jj.resistance main_score 0