execute store result score #temp2 main_score run data get storage survival_rework_jj:main temp[-1][1][0] -100
scoreboard players operation #temp2 main_score += @s survival_rework_jj.temperature
execute if entity @s[tag=!survival_rework_jj.effect.freshness] run scoreboard players operation #temp2 main_score /= #8 const
execute if entity @s[tag=survival_rework_jj.effect.freshness] run scoreboard players operation #temp2 main_score /= #200 const
scoreboard players operation @s survival_rework_jj.temperature -= #temp2 main_score