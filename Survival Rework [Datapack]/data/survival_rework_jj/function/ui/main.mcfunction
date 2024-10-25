execute if score @s survival_rework_jj.thirst matches ..-1 run scoreboard players set @s survival_rework_jj.thirst 0
execute if score @s survival_rework_jj.thirst matches 21.. run scoreboard players set @s survival_rework_jj.thirst 20

execute if score @s survival_rework_jj.temperature matches 31..59 run function survival_rework_jj:temperature/debuff/hypothermia
execute if score @s survival_rework_jj.temperature matches 60..110 run scoreboard players set #temp2 main_score 2
execute if score @s[predicate=!survival_rework_jj:has_fire_resistance] survival_rework_jj.temperature matches 111..160 run function survival_rework_jj:temperature/debuff/hyperthermia
execute if score @s[predicate=!survival_rework_jj:has_fire_resistance] survival_rework_jj.temperature matches 161.. run function survival_rework_jj:temperature/damage/hyperthermia

execute store result storage survival_rework_jj:main ui.thirst int 1 run scoreboard players get @s survival_rework_jj.thirst
execute store result storage survival_rework_jj:main ui.temperature int 1 run scoreboard players get #temp2 main_score

execute unless block ~ ~ ~ minecraft:water run function survival_rework_jj:ui/title with storage survival_rework_jj:main ui
execute if block ~ ~ ~ minecraft:water if entity @s[tag=survival_rework_jj.ui_display] run function survival_rework_jj:ui/remove_display

#hype - жарко
#hypo - холодно