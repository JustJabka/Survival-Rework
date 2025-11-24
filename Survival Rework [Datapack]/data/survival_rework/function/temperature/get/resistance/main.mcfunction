scoreboard players set #survival_rework.resistance main 30
execute if predicate jabkacore:shared/fluid/water run scoreboard players set #survival_rework.resistance main 50

# Convulsions
execute if score @s survival_rework.temperature matches ..3450 run scoreboard players remove #survival_rework.resistance main 5

# Hot environment
execute if score #survival_rework.temperature_diff main matches ..-1 run function survival_rework:temperature/get/resistance/hot

# Cold environment
execute if score #survival_rework.temperature_diff main matches 1.. run function survival_rework:temperature/get/resistance/cold

execute if score #survival_rework.resistance main matches ..-1 run scoreboard players set #survival_rework.resistance main 0