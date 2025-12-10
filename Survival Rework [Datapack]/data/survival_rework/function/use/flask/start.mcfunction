scoreboard players add @s survival_rework.thirst 3
scoreboard players remove @s survival_rework.temperature 10

execute if entity @s[advancements={survival_rework:use/flask={water=true}}] run function survival_rework:effect/thirst/chance
advancement revoke @s only survival_rework:use/flask