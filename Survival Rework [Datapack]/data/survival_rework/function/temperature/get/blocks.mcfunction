# Hot

## Warm
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #survival_rework:temperature/warm strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 1000

## Hot
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #survival_rework:temperature/hot strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 2000

## Extreme high
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #survival_rework:temperature/extreme_high strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 3000

# Cold

## Cool
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #survival_rework:temperature/warm strict
execute if score #temp main matches 1.. run scoreboard players remove #survival_rework.env_temperature main 1000

## Cold
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #survival_rework:temperature/warm strict
execute if score #temp main matches 1.. run scoreboard players remove #survival_rework.env_temperature main 2000

## Extreme low
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #survival_rework:temperature/warm strict
execute if score #temp main matches 1.. run scoreboard players remove #survival_rework.env_temperature main 3000

# Temperature of blocks that need particular blockstate
function #survival_rework:block_temperature