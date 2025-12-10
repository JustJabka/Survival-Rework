advancement revoke @s only survival_rework:interaction/water

scoreboard players add @s survival_rework.thirst 3
scoreboard players remove @s survival_rework.temperature 10
function survival_rework:effect/thirst/chance

execute at @s run playsound minecraft:entity.generic.drink player @a[distance=..3] ~ ~ ~ 0.25