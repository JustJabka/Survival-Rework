execute if score @s survival_rework_jj.thirst matches ..-1 run scoreboard players set @s survival_rework_jj.thirst 0
execute if score @s survival_rework_jj.thirst matches 21.. run scoreboard players set @s survival_rework_jj.thirst 20

# temperature effects
execute if score .temperature survival_rework_jj.config matches 1 run function survival_rework_jj:effects/temperature

# ui
execute store result storage survival_rework_jj:main ui.thirst int 1 run scoreboard players get @s survival_rework_jj.thirst
execute store result storage survival_rework_jj:main ui.temperature int 1 run scoreboard players get #temp2 main_score 

execute if predicate survival_rework_jj:can_breath_underwater anchored eyes positioned ^ ^ ^ if block ~ ~ ~ minecraft:water run return run function survival_rework_jj:ui/in_water with storage survival_rework_jj:main ui
execute if score @s survival_rework_jj.air matches 300 run return run function survival_rework_jj:ui/title with storage survival_rework_jj:main ui
execute if score @s survival_rework_jj.air matches ..299 run function survival_rework_jj:ui/in_water with storage survival_rework_jj:main ui