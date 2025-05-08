scoreboard players add @s survival_rework_jj.thirst 3
scoreboard players remove @s survival_rework_jj.temperature 10
execute if entity @s[advancements={survival_rework_jj:use/flask={water=true}}] run function survival_rework_jj:effects/thirst/chance

advancement revoke @s only survival_rework_jj:use/flask