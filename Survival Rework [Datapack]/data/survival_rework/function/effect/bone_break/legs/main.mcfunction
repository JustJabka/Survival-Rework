# add break legs attributes
attribute @s[scores={survival_rework.effect.legs_break=1..}] minecraft:movement_speed modifier add survival_rework:easy_leg_break -0.025 add_value
attribute @s[scores={survival_rework.effect.legs_break=2..}] minecraft:movement_speed modifier add survival_rework:hard_leg_break -0.025 add_value
attribute @s[scores={survival_rework.effect.legs_break=3..}] minecraft:movement_speed modifier add survival_rework:extreme_leg_break -0.025 add_value

attribute @s[scores={survival_rework.effect.legs_break=2..}] minecraft:jump_strength modifier add survival_rework:no_jump -2147483647 add_value

# timer
scoreboard players remove @s[scores={survival_rework.legs_break.heal_timer=1..}] survival_rework.legs_break.heal_timer 1
execute if score @s[tag=survival_rework.have_splint] survival_rework.legs_break.heal_timer matches ..0 if score @s survival_rework.effect.legs_break matches 1.. run function survival_rework:effect/bone_break/legs/clear