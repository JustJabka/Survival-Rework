# add break legs attributes
execute if score @s survival_rework_jj.legs_break_lvl matches 1.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:easy_leg_break -0.025 add_value
execute if score @s survival_rework_jj.legs_break_lvl matches 2.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:hard_leg_break -0.025 add_value
execute if score @s survival_rework_jj.legs_break_lvl matches 3.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:extreme_leg_break -0.025 add_value

execute if score @s survival_rework_jj.legs_break_lvl matches 2.. run attribute @s minecraft:jump_strength modifier add survival_rework_jj:no_jump -0.5 add_value

# timer
scoreboard players remove @s[scores={survival_rework_jj.legs_break_heal_timer=1..}] survival_rework_jj.legs_break_heal_timer 1
advancement grant @s[scores={survival_rework_jj.legs_break_heal_timer=1,survival_rework_jj.legs_break_lvl=1..},advancements={survival_rework_jj:a/use_splint=false}] only survival_rework_jj:a/use_splint
scoreboard players set @s[scores={survival_rework_jj.legs_break_heal_timer=1}] survival_rework_jj.legs_break_lvl 0