execute store result score #temp2 main_score run fill 0 64 0 6 70 6 minecraft:air replace #survival_rework_jj:warm
execute if score #temp2 main_score matches 1.. run scoreboard players add @s survival_rework_jj.temperature 5

execute store result score #temp2 main_score run fill 0 64 0 6 70 6 minecraft:air replace #survival_rework_jj:hot
execute if score #temp2 main_score matches 1.. run scoreboard players add @s survival_rework_jj.temperature 10