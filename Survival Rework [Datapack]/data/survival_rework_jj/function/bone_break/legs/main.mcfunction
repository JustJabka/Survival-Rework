# add break legs attributes
execute if score @s survival_rework_jj.legs_break_lvl matches 1.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:easy_leg_break -0.025 add_value
execute if score @s survival_rework_jj.legs_break_lvl matches 2.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:hard_leg_break -0.025 add_value
execute if score @s survival_rework_jj.legs_break_lvl matches 3.. run attribute @s minecraft:movement_speed modifier add survival_rework_jj:extreme_leg_break -0.025 add_value

execute if score @s survival_rework_jj.legs_break_lvl matches 2.. run attribute @s minecraft:jump_strength modifier add survival_rework_jj:no_jump -2147483647 add_value

# timer
scoreboard players remove @s[scores={survival_rework_jj.legs_break_heal_timer=1..}] survival_rework_jj.legs_break_heal_timer 1
execute if score @s[tag=survival_rework_jj.have_splint] survival_rework_jj.legs_break_heal_timer matches ..0 if score @s survival_rework_jj.legs_break_lvl matches 1.. run function survival_rework_jj:bone_break/legs/heal