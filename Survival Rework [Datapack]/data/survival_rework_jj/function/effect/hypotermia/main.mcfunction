# snow effect
execute anchored eyes positioned ^ ^ ^ store success score #temp main_score run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #survival_rework_jj:air
execute if score #temp main_score matches 1 anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["survival_rework_jj.snow_effect"]}
execute store success score #temp main_score run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #survival_rework_jj:air
execute if score #temp main_score matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["survival_rework_jj.snow_effect"]}

# revoke
advancement revoke @s only survival_rework_jj:hypothermia