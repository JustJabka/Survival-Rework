execute if score @s survival_rework_jj.thirst matches ..-1 run scoreboard players set @s survival_rework_jj.thirst 0
execute if score @s survival_rework_jj.thirst matches 21.. run scoreboard players set @s survival_rework_jj.thirst 20

# effects
execute if score .temperature survival_rework_jj.config matches 1 run function survival_rework_jj:effects/temperature

# ui
execute store result storage survival_rework_jj:main ui.thirst int 1 run scoreboard players get @s survival_rework_jj.thirst
execute store result storage survival_rework_jj:main ui.temperature int 1 run scoreboard players get #temp2 main_score 

execute unless block ~ ~ ~ minecraft:water run function survival_rework_jj:ui/title with storage survival_rework_jj:main ui
execute if block ~ ~ ~ minecraft:water if entity @s[tag=survival_rework_jj.ui_display] run function survival_rework_jj:ui/remove_display

#hype - hot
#hypo - cold