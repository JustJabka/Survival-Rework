advancement revoke @s only survival_rework_jj:slept_in_bed

effect give @s minecraft:hunger 2 255 true
function survival_rework_jj:effect/thirst/give
effect give @s minecraft:instant_health 1 0 true

scoreboard players set @s[scores={survival_rework_jj.effect.legs_break=1}] survival_rework_jj.legs_break.heal_timer 0
scoreboard players set @s[scores={survival_rework_jj.effect.legs_break=1}] survival_rework_jj.effect.legs_break 0