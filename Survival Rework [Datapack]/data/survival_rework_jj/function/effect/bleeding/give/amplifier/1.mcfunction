advancement grant @s[advancements={survival_rework_jj:a/bleeding=false}] only survival_rework_jj:a/bleeding
execute if entity @s[tag=survival_rework_jj.effect.bleeding.2] run return fail
tag @s add survival_rework_jj.effect.bleeding

tag @s add survival_rework_jj.effect.bleeding.1
scoreboard players set @s survival_rework_jj.effect.bleeding 420