function survival_rework:temperature/get/resistance/main

scoreboard players operation #survival_rework.temperature_diff main *= #survival_rework.resistance main
scoreboard players operation #survival_rework.temperature_diff main /= #10000 const

scoreboard players operation #temp main -= #survival_rework.temperature_diff main
scoreboard players operation @s survival_rework.temperature = #temp main