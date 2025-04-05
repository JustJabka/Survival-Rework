scoreboard players set @s survival_rework_jj.jump 0
scoreboard players set @s survival_rework_jj.fall_one_cm 0

scoreboard players set @s survival_rework_jj.legs_break_lvl 0
scoreboard players set @s survival_rework_jj.legs_break_heal_timer 0

scoreboard players set @s survival_rework_jj.bleeding_timer 0

scoreboard players set @s survival_rework_jj.thirst 0
scoreboard players set @s survival_rework_jj.thirst_timer 0
scoreboard players set @s survival_rework_jj.effect.thirst 0
scoreboard players set @s survival_rework_jj.thirst 20
scoreboard players set @s survival_rework_jj.thirst_timer 3600

scoreboard players set @s survival_rework_jj.temperature 3660

tag @s remove survival_rework_jj.effect.thirst
tag @s remove survival_rework_jj.effect.freshness
tag @s remove survival_rework_jj.bleeding
effect clear @s[scores={survival_rework_jj.health=0}] minecraft:blindness