advancement grant @s[advancements={survival_rework:a/bleeding=false}] only survival_rework:a/bleeding
execute if entity @s[tag=survival_rework.effect.bleeding.2] run return fail
tag @s add survival_rework.effect.bleeding

tag @s add survival_rework.effect.bleeding.1
scoreboard players set @s survival_rework.effect.bleeding 420