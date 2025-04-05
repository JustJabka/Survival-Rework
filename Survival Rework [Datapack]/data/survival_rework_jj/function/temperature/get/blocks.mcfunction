# warm blocks
execute store result score #temp main_score run fill 0 0 0 10 10 10 minecraft:air replace #survival_rework_jj:warm strict
execute if score #temp main_score matches 1.. run scoreboard players add #survival_rework_jj.env_temperature main_score 2500

# lit furnaces
execute store result score #temp main_score run fill 0 0 0 10 10 10 minecraft:air replace minecraft:furnace[lit=true] strict
execute if score #temp main_score matches 1.. run scoreboard players add #survival_rework_jj.env_temperature main_score 2500

execute store result score #temp main_score run fill 0 0 0 10 10 10 minecraft:air replace minecraft:smoker[lit=true] strict
execute if score #temp main_score matches 1.. run scoreboard players add #survival_rework_jj.env_temperature main_score 2500

execute store result score #temp main_score run fill 0 0 0 10 10 10 minecraft:air replace minecraft:blast_furnace[lit=true] strict
execute if score #temp main_score matches 1.. run scoreboard players add #survival_rework_jj.env_temperature main_score 2500