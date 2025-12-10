# The maximum and minimum values that a thermometer can display
scoreboard players set #min main -1600
scoreboard players set #max main 3500

scoreboard players operation #amplitude main = #max main
scoreboard players operation #amplitude main -= #min main

# Interpolation
scoreboard players operation #prev main = #amplitude main
scoreboard players operation #prev main *= #survival_rework.thermometer main
scoreboard players operation #prev main += #min main

scoreboard players operation #temp main = #survival_rework.env_temperature main
scoreboard players operation #temp main *= #100 const

scoreboard players operation #temp main -= #prev main
# Interpolation duration
# scoreboard players operation #temp main *= #10 const
# scoreboard players operation #temp main /= #15 const
scoreboard players operation #temp main /= #2 const
scoreboard players operation #prev main += #temp main

scoreboard players operation #prev main -= #min main
scoreboard players operation #prev main /= #amplitude main

# Limit values
execute if score #prev main matches ..-1 run scoreboard players set #prev main 0