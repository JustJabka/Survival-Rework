advancement revoke @s only survival_rework_jj:slept_in_bed

effect give @s minecraft:hunger 2 255 true
effect give @s minecraft:instant_health 1 0 true

scoreboard players set @s[scores={survival_rework_jj.legs_break_lvl=1}] survival_rework_jj.legs_break_heal_timer 0
scoreboard players set @s[scores={survival_rework_jj.legs_break_lvl=1}] survival_rework_jj.legs_break_lvl 0
scoreboard players set @s survival_rework_jj.thirst_timer 3600
scoreboard players remove @s survival_rework_jj.thirst 5