execute store result score #survival_rework.env_temperature_diff main run data get storage survival_rework:main temperature[1]
execute store result score #survival_rework.env_temperature_min main run data get storage survival_rework:main temperature[0]

# y = (T_max - T_min) * daytime
scoreboard players operation #survival_rework.env_temperature_diff main -= #survival_rework.env_temperature_min main
scoreboard players operation #survival_rework.env_temperature_diff main *= #daytime main
scoreboard players operation #survival_rework.env_temperature_diff main /= #100 const

# env_temperature = T_min + y
scoreboard players operation #survival_rework.env_temperature main = #survival_rework.env_temperature_min main
scoreboard players operation #survival_rework.env_temperature main += #survival_rework.env_temperature_diff main