# T = T_min + (T_max - T_min) * (1 + cos(2Pi(daytime - 9000) / 24000) / 2 )
function #survival_rework_jj:biome_temperature

# Temperature peak
execute store result score #temp main_score run time query daytime
scoreboard players remove #temp main_score 9000
scoreboard players operation #temp main_score *= #360 const
scoreboard players operation #temp main_score /= #24000 const

function survival_rework_jj:temperature/get/cos/start

scoreboard players add #temp main_score 100
scoreboard players operation #temp main_score /= #2 const

# Calculate environment temperature
execute store result score #survival_rework_jj.env_temperature_diff main_score run data get storage survival_rework_jj:main temperature[1]
execute store result score #survival_rework_jj.env_temperature_min main_score run data get storage survival_rework_jj:main temperature[0]

scoreboard players operation #survival_rework_jj.env_temperature_diff main_score -= #survival_rework_jj.env_temperature_min main_score
scoreboard players operation #survival_rework_jj.env_temperature_diff main_score *= #temp main_score
scoreboard players operation #survival_rework_jj.env_temperature_diff main_score /= #100 const

scoreboard players operation #survival_rework_jj.env_temperature main_score = #survival_rework_jj.env_temperature_min main_score
scoreboard players operation #survival_rework_jj.env_temperature main_score += #survival_rework_jj.env_temperature_diff main_score

# Calculate environment temperature for water
execute if predicate survival_rework_jj:in_water run function survival_rework_jj:temperature/get/water

# Add environment temperature for blocks
clone ~5 ~5 ~5 ~-5 ~-5 ~-5 to survival_rework_jj:main 0 0 0 strict filtered #survival_rework_jj:search
execute in survival_rework_jj:main positioned 0 0 0 run function survival_rework_jj:temperature/get/blocks

scoreboard players operation #temp main_score = @s survival_rework_jj.temperature
scoreboard players operation #survival_rework_jj.temperature_diff main_score = @s survival_rework_jj.temperature
scoreboard players operation #survival_rework_jj.temperature_diff main_score -= #survival_rework_jj.env_temperature main_score

# Resistance to enviroment temperature
function survival_rework_jj:temperature/get/resistance/main

scoreboard players operation #survival_rework_jj.temperature_diff main_score *= #survival_rework_jj.resistance main_score
scoreboard players operation #survival_rework_jj.temperature_diff main_score /= #10000 const

scoreboard players operation #temp main_score -= #survival_rework_jj.temperature_diff main_score
scoreboard players operation @s survival_rework_jj.temperature = #temp main_score

# Metabolism
execute if score @s survival_rework_jj.temperature matches 3660.. if score @s survival_rework_jj.thirst matches 7.. run scoreboard players remove @s survival_rework_jj.temperature 2
execute if score @s survival_rework_jj.temperature matches ..3660 if score @s survival_rework_jj.food matches 7.. run scoreboard players add @s survival_rework_jj.temperature 5
function survival_rework_jj:temperature/metabolism