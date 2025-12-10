execute if score @s survival_rework.thirst matches ..-1 run scoreboard players set @s survival_rework.thirst 0
execute if score @s survival_rework.thirst matches 21.. run scoreboard players set @s survival_rework.thirst 20

# temperature effects
execute if score .temperature survival_rework.config matches 1 run function survival_rework:effect/temperature

# ui
execute store result storage survival_rework:main ui.thirst int 1 run scoreboard players get @s survival_rework.thirst
execute store result storage survival_rework:main ui.temperature int 1 run scoreboard players get #temp2 main 

execute if predicate survival_rework:can_breath_underwater anchored eyes positioned ^ ^ ^ if block ~ ~ ~ minecraft:water run return run function survival_rework:ui/in_water with storage survival_rework:main ui
execute if predicate jabkacore:shared/has_vehicle if function survival_rework:ui/health_overlap run return run function survival_rework:ui/in_water with storage survival_rework:main ui
execute if score @s air matches 300 run return run function survival_rework:ui/show with storage survival_rework:main ui
execute if score @s air matches ..299 run function survival_rework:ui/in_water with storage survival_rework:main ui