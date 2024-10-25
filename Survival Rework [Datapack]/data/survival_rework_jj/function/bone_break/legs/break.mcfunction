# add break legs lvl in scoreboard
scoreboard players add @s[advancements={survival_rework_jj:break_leg={easy_leg_break=true}},scores={survival_rework_jj.legs_break_lvl=..2}] survival_rework_jj.legs_break_lvl 1 
scoreboard players add @s[advancements={survival_rework_jj:break_leg={hard_leg_break=true}},scores={survival_rework_jj.legs_break_lvl=..2}] survival_rework_jj.legs_break_lvl 1 
scoreboard players add @s[advancements={survival_rework_jj:break_leg={extreme_leg_break=true}},scores={survival_rework_jj.legs_break_lvl=..2}] survival_rework_jj.legs_break_lvl 1
# reset heal timer
scoreboard players set @s[scores={survival_rework_jj.legs_break_heal_timer=1..}] survival_rework_jj.legs_break_heal_timer 9000
# break leg sound
playsound minecraft:entity.item.break ambient @a[distance=..5] ~ ~ ~

# revoke
advancement grant @s[advancements={survival_rework_jj:a/break_leg=false}] only survival_rework_jj:a/break_leg
advancement revoke @s only survival_rework_jj:break_leg