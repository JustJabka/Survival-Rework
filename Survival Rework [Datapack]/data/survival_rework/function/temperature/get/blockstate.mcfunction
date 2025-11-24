## lit furnaces
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace minecraft:furnace[lit=true] strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 2000

execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace minecraft:smoker[lit=true] strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 2000

execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace minecraft:blast_furnace[lit=true] strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 2000

## Candles
execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #minecraft:candles[lit=true] strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 1000

execute store result score #temp main run fill 0 0 0 10 10 10 minecraft:air replace #minecraft:candle_cakes[lit=true] strict
execute if score #temp main matches 1.. run scoreboard players add #survival_rework.env_temperature main 1000