advancement revoke @s only survival_rework_jj:water_interaction

scoreboard players add @s survival_rework_jj.thirst 3
scoreboard players remove @s survival_rework_jj.temperature 2
#function survival_rework_jj:thirst/effects/thirst/give

execute at @s run playsound minecraft:entity.generic.drink player @a[distance=..3] ~ ~ ~ 0.25