# T = T_min + (T_max - T_min) * (1 + cos(2Pi(daytime - 9000) / 24000) / 2 )
function #survival_rework:biome_temperature

function survival_rework:temperature/calc/peak_temperature
function survival_rework:temperature/calc/env_temperature
execute if predicate jabkacore:shared/fluid/water run function survival_rework:temperature/calc/env_water
function survival_rework:temperature/calc/blocks
function survival_rework:temperature/calc/resistance

# Thermometer
execute if items entity @s weapon.* minecraft:poisonous_potato[minecraft:custom_data~{"survival_rework.thermometer":true}] run function survival_rework:use/thermometer/start

# Metabolism
execute if score @s survival_rework.temperature matches 3660.. if score @s survival_rework.thirst matches 1.. run scoreboard players remove @s survival_rework.temperature 2
execute if score @s survival_rework.temperature matches ..3660 if score @s food matches 1.. run scoreboard players add @s survival_rework.temperature 5
function survival_rework:temperature/metabolism