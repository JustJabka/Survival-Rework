advancement revoke @s only survival_rework_jj:interaction/clear_water

scoreboard players add @s survival_rework_jj.thirst 3
scoreboard players remove @s survival_rework_jj.temperature 10

execute at @s run playsound minecraft:entity.generic.drink player @a[distance=..3] ~ ~ ~ 0.25