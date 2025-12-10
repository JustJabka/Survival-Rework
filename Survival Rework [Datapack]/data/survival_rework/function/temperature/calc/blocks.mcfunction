clone ~5 ~5 ~5 ~-5 ~-5 ~-5 to survival_rework:main 0 0 0 strict filtered #survival_rework:temperature/search
execute in survival_rework:main positioned 0 0 0 run function survival_rework:temperature/get/blocks

scoreboard players operation #temp main = @s survival_rework.temperature
scoreboard players operation #survival_rework.temperature_diff main = @s survival_rework.temperature
scoreboard players operation #survival_rework.temperature_diff main -= #survival_rework.env_temperature main